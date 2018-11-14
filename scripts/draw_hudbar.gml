/// draw_hudbar(x, height, perc)
if (argument2 > 0)  { 
    var wh = window_get_height();
    draw_rectangle(argument0, wh - 10, argument0 + 9, (wh - 10) - (argument2 * argument1), 0);
}
