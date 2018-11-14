/// draw_trail_line(list, color, width, min_alpha, max_alpha)
var list = argument0;
var color = argument1;
var width = argument2;
var min_alpha = argument3;
var max_alpha = argument4;

if (ds_list_size(list) < 6) exit;

var nx, ny;
for (var p = 0; p < ds_list_size(list); p += 3) {
    var tx = ds_list_find_value(list, p);
    var ty = ds_list_find_value(list, p + 1);
    var td = ds_list_find_value(list, p + 2);
    
    if (p + 3 < ds_list_size(list))  {
        nx = ds_list_find_value(list, p + 3);
        ny = ds_list_find_value(list, p + 4);
    }   else    {
        nx = ds_list_find_value(list, p - 3);
        ny = ds_list_find_value(list, p - 2);
        var len = point_distance(nx, ny, tx, ty);
        var dir = point_direction(nx, ny, tx, ty);
        nx = tx + lengthdir_x(len, dir);
        ny = ty + lengthdir_y(len, dir);
    }
    
    draw_set_colour(color);
    var alpha = lerp(max_alpha, min_alpha, p / ds_list_size(list));
    draw_set_alpha(alpha);
    draw_line_width(tx, ty, nx, ny, width * (1 - (p / ds_list_size(list))));
    draw_set_alpha(1);
}
