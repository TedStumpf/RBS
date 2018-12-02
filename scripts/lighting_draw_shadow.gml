/// lighting_draw_shadow(sprite, subimg, x, y, xscale, yscale, rot, color, alpha)
if ((!global.setting_light_on) || (!obj_fx_lighting.active)) exit;
with (obj_fx_lighting)  {
    shadow_surf = refresh_surface(shadow_surf, c_black, 0, dw, dh);
    surface_set_target(shadow_surf);
    draw_sprite_ext(argument0, argument1, argument2 - view_xview[0], argument3 - view_yview[0], argument4, argument5, argument6, argument7, argument8);
    draw_set_blend_mode_ext(bm_zero, bm_src_alpha);
    draw_surface(mask_surf, 0, 0);
    draw_set_blend_mode(bm_normal);
    surface_reset_target();
    draw_surface(shadow_surf, view_xview[0], view_yview[0]);
}
