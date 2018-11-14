/// dat_init_striker()
var map = ds_map_create();
var sid = shp_striker;
global.ship_core_data[sid] = map;

ds_map_add(map, 'id', sid);
ds_map_add(map, 'sprite', spr_smallship_striker);
ds_map_add(map, 'sprite_paint', spr_smallship_striker_paint);
ds_map_add(map, 'paint_count', 1);
ds_map_add(map, 'sprite_lights', spr_smallship_striker_lights);
ds_map_add(map, 'light_count', 4);

ds_map_add(map, 'parent_company', comp_orion);
ds_map_add(map, 'name', 'Striker');

ds_map_add(map, 'mass', 17000);
ds_map_add(map, 'thrust_mult', 1);
ds_map_add(map, 'handling_mult', 1.2);

ds_map_add(map, 'internal_health', 30);
ds_map_add(map, 'hull_health', 50);

ds_map_add(map, 'crew_capacity', 1);
ds_map_add(map, 'cargo_capacity', 4);
ds_map_add(map, 'fuel_capacity', 2.5);
ds_map_add(map, 'elec_capacity', 100);
ds_map_add(map, 'heat_capacity', 250);
ds_map_add(map, 'module_capacity', 1);

ds_map_add(map, 'weapon_capacity', 3);
ds_map_add(map, 'turret_mounts_max', 2);
ds_map_add(map, 'turret_mounts_base', 0);
ds_map_add(map, 'turret_mount_len_0', 10);
ds_map_add(map, 'turret_mount_dir_0', 0);
ds_map_add(map, 'turret_mount_len_1', 10);
ds_map_add(map, 'turret_mount_dir_1', 180);

ds_map_add(map, 'fixed_mounts_max', 6);
ds_map_add(map, 'fixed_mounts_base', 6);
ds_map_add(map, 'fixed_mount_len_0', point_distance(32, 24, 25, 4));
ds_map_add(map, 'fixed_mount_dir_0', point_direction(32, 24, 25, 4));
ds_map_add(map, 'fixed_mount_len_1', point_distance(32, 24, 25, 43));
ds_map_add(map, 'fixed_mount_dir_1', point_direction(32, 24, 25, 43));
ds_map_add(map, 'fixed_mount_len_2', point_distance(32, 24, 27, 6));
ds_map_add(map, 'fixed_mount_dir_2', point_direction(32, 24, 27, 6));
ds_map_add(map, 'fixed_mount_len_3', point_distance(32, 24, 27, 41));
ds_map_add(map, 'fixed_mount_dir_3', point_direction(32, 24, 27, 41));
ds_map_add(map, 'fixed_mount_len_4', point_distance(32, 24, 29, 8));
ds_map_add(map, 'fixed_mount_dir_4', point_direction(32, 24, 29, 8));
ds_map_add(map, 'fixed_mount_len_5', point_distance(32, 24, 29, 39));
ds_map_add(map, 'fixed_mount_dir_5', point_direction(32, 24, 29, 39));

ds_map_add(map, 'missle_capacity', 1);

ds_map_add(map, 'engine_points', 1);
ds_map_add(map, 'engine_point_len_0', 30);
ds_map_add(map, 'engine_point_dir_0', 180);

