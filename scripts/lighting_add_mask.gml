/// lighting_add_mask(sprite, subimg, x, y, xscale, yscale, rot)
with (obj_fx_lighting)  {
    surface_set_target(mask_surf);
    draw_sprite_ext(argument0, argument1, argument2 - view_xview[0], argument3 - view_yview[0], argument4, argument5, argument6, c_black, 1);
    surface_reset_target();
}
