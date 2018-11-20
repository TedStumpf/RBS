/// refresh_surface(surf, col, alpha, w, h)
var surf = argument0;
if (!surface_exists(surf))  {
    surf = surface_create(argument3, argument4);
}
surface_set_target(surf);
draw_clear_alpha(argument1, argument2);
surface_reset_target();
return surf;
