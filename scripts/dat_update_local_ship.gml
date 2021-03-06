/// dat_update_local_ship(vessel, new)
vessel = argument0;
var dat_ship = dat_get_default(argument0, 'dat_ship', -1);
var dat_engine = dat_get_default(argument0, 'dat_engine', -1);

sprite_base = dat_get_raw(dat_ship, 'sprite', spr_smallship_striker);
sprite_paint = dat_get_raw(dat_ship, 'sprite_paint', spr_smallship_striker_paint);
paint_eqipped = 0;
sprite_lights = dat_get_raw(dat_ship, 'sprite_lights', spr_smallship_striker_lights);

color_0 = dat_get_default(dat_ship, 'color_0', c_red);
color_1 = dat_get_default(dat_ship, 'color_1', c_lime);
color_2 = dat_get_default(dat_ship, 'color_2', c_blue);

sprite_index = sprite_base;

max_internal = dat_get_raw(dat_ship, 'internal_health', 1);
max_hull = dat_get_raw(dat_ship, 'hull_health', 1);
max_fuel = dat_get_raw(dat_ship, 'fuel_capacity', 1);
max_elec = dat_get_raw(dat_ship, 'elec_capacity', 1);
max_heat = dat_get_raw(dat_ship, 'heat_capacity', 1);

if (argument1)  {
    my_internal = max_internal;
    my_hull = max_hull;
    my_fuel = max_fuel;
    my_elec = max_elec * 0.5;
    my_heat = 50;
}

var eng_count = dat_get_raw(dat_ship, 'engine_points', 0);
for (var e = 0; e < eng_count; e++)    {
    my_trail_fx[e] = noone;
}

var wep_count = dat_get_raw(dat_ship, 'fixed_mounts_max', 0);
for (var w = 0; w < wep_count; w++) {
    time_since_fire[w] = 0;
    weapon_loaded_ammo[w] = 0;
} 
