/// dat_update_local_ship(vessel, new)
var dat_ship = dat_get_default(argument0, 'dat_ship', -1);
sprite_base = dat_get_raw(dat_ship, 'sprite', spr_smallship_striker);
sprite_paint = dat_get_raw(dat_ship, 'sprite_paint', spr_smallship_striker_paint);
paint_eqipped = 0;
sprite_lights = dat_get_raw(dat_ship, 'sprite_lights', spr_smallship_striker_lights);

color_0 = dat_get_default(argument0, 'color_0', c_red);
color_1 = dat_get_default(argument0, 'color_1', c_lime);
color_2 = dat_get_default(argument0, 'color_2', c_blue);

sprite_index = sprite_base;

max_internal = dat_get_raw(argument0, 'internal_health', 1);
max_hull = dat_get_raw(argument0, 'hull_health', 1);
max_fuel = dat_get_raw(argument0, 'fuel_capacity', 1);
max_elec = dat_get_raw(argument0, 'elec_capacity', 1);
max_heat = dat_get_raw(argument0, 'heat_capacity', 1);

if (argument1)  {
    my_internal = max_internal;
    my_hull = max_hull;
    my_fuel = max_fuel;
    my_elec = max_elec * 0.5;
    my_heat = 50;
}


var eng_count = dat_get_raw(argument0, 'engine_points', 0);
for (var e = 0; e < eng_count; e++)    {
    my_trail_fx[e] = noone;
}
