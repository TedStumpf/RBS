/// dat_init_maw1()
var map = ds_map_create();
var sid = wep_maw1;
global.weapon_core_data[sid] = map;

ds_map_add(map, 'id', sid);
ds_map_add(map, 'name', "M.A.W. MK I");
ds_map_add(map, 'fire_sound', snd_gunshot_maw1);

ds_map_add(map, 'fire_rate', 10);
ds_map_add(map, 'multishot', 1);
ds_map_add(map, 'magazine_size', 60);
ds_map_add(map, 'reload_time', 2);
ds_map_add(map, 'accuracy', 0.90);

ds_map_add(map, 'damage_to_armor', 10);
ds_map_add(map, 'damage_to_health', 8);

ds_map_add(map, 'projectile_obj', obj_projectile_bullet);
ds_map_add(map, 'projectile_speed', 8000);

