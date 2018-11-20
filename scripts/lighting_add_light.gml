/// lighting_add_light(light, x, y, scale, rot, color, alpha)
with (obj_fx_lighting)  {
    surface_set_target(light_surf);
    draw_set_blend_mode(bm_add);
    draw_sprite_ext(argument0, 0, argument1 - view_xview[0], argument2 - view_yview[0], argument3, argument3, argument4, argument5, argument6);
    draw_set_blend_mode(bm_normal);
    surface_reset_target();
}
