/// change_zoom(zoom)
var sw = display_get_width(), sh = display_get_height();
_gscale = argument0;
view_wview[0] = sw / _gscale;
view_hview[0] = sh / _gscale;
view_wport[0] = sw;
view_hport[0] = sh;
surface_resize(application_surface, sw, sh);
