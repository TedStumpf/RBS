/// dat_init_thumper()
var map = ds_map_create();
var sid = wep_thumper;
global.weapon_core_data[sid] = map;

ds_map_add(map, 'id', sid);
ds_map_add(map, 'name', "MG01 - Thumper");

ds_map_add(map, 'fire_rate', 4);
ds_map_add(map, 'multishot', 1);
ds_map_add(map, 'magazine_size', 100);
ds_map_add(map, 'reload_time', 3);
ds_map_add(map, 'accuracy', 0.95);

ds_map_add(map, 'damage_to_armor', 10);
ds_map_add(map, 'damage_to_health', 8);

ds_map_add(map, 'projectile_obj', obj_projectile_bullet);
ds_map_add(map, 'projectile_speed', 8000);
