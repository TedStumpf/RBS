/// draw_trail_advanced(list, color, icolor, width, min_alpha)
var list = argument0;
var color = argument1;
var icolor = argument2;
var width = argument3;
var min_alpha = argument4;

if (ds_list_size(list) < 6) exit;

draw_primitive_begin(pr_trianglelist);

var nx, ny, nd, wid, nwid;
for (var p = 0; p < ds_list_size(list); p += 3) {
    var tx = ds_list_find_value(list, p);
    var ty = ds_list_find_value(list, p + 1);
    var td = ds_list_find_value(list, p + 2);
    
    if (p + 3 < ds_list_size(list))  {
        nx = ds_list_find_value(list, p + 3);
        ny = ds_list_find_value(list, p + 4);
        nd = ds_list_find_value(list, p + 5);
    }   else    {
        nx = ds_list_find_value(list, p - 3);
        ny = ds_list_find_value(list, p - 2);
        var len = point_distance(nx, ny, tx, ty);
        var dir = point_direction(nx, ny, tx, ty);
        nx = tx + lengthdir_x(len, dir);
        ny = ty + lengthdir_y(len, dir);
        nd = dir;
    }
    
    var perc = p / ds_list_size(list);
    var nperc = (p + 3) / ds_list_size(list);
    var wid = width * (1 - perc);
    var nwid = width * (1 - nperc);
    var alpha = (1 - min_alpha) * (1 - perc) + min_alpha;
    var nalpha = (1 - min_alpha) * (1 - nperc) + min_alpha;
    var ticolor = merge_colour(icolor, color, perc);
    var nicolor = merge_colour(icolor, color, nperc);
    
    var tx1 = tx + lengthdir_x(wid / 2, td + 90);
    var ty1 = ty + lengthdir_y(wid / 2, td + 90);
    var tx2 = tx + lengthdir_x(wid / 2, td - 90);
    var ty2 = ty + lengthdir_y(wid / 2, td - 90);
    var nx1 = nx + lengthdir_x(wid / 2, nd + 90);
    var ny1 = ny + lengthdir_y(wid / 2, nd + 90);
    var nx2 = nx + lengthdir_x(wid / 2, nd - 90);
    var ny2 = ny + lengthdir_y(wid / 2, nd - 90);
    
    //  Tris
    draw_vertex_colour(tx1, ty1, color, alpha);
    draw_vertex_colour(nx1, ny1, color, nalpha);
    draw_vertex_colour(nx, ny, nicolor, nalpha);
    
    draw_vertex_colour(tx1, ty1, color, alpha);
    draw_vertex_colour(tx, ty, ticolor, alpha);
    draw_vertex_colour(nx, ny, nicolor, nalpha);
    
    draw_vertex_colour(tx, ty, ticolor, alpha);
    draw_vertex_colour(tx2, ty2, color, alpha);
    draw_vertex_colour(nx, ny, nicolor, nalpha);
    
    draw_vertex_colour(tx2, ty2, color, alpha);
    draw_vertex_colour(nx2, ny2, color, nalpha);
    draw_vertex_colour(nx, ny, nicolor, nalpha);
}

draw_primitive_end();
