/// dat_init_pod()
var map = ds_map_create();
var sid = shp_pod;
global.ship_core_data[sid] = map;

ds_map_add(map, 'id', sid);
ds_map_add(map, 'sprite', spr_smallship_pod);
ds_map_add(map, 'sprite_paint', spr_smallship_pod_paint);
ds_map_add(map, 'paint_count', 2);
ds_map_add(map, 'sprite_lights', spr_smallship_pod_lights);
ds_map_add(map, 'light_count', 4);

ds_map_add(map, 'parent_company', comp_inteliware);
ds_map_add(map, 'ship_name', 'Pod');

ds_map_add(map, 'mass', 30000);
ds_map_add(map, 'thrust_mult', 1);
ds_map_add(map, 'handling_mult', 0.8);

ds_map_add(map, 'internal_health', 35);
ds_map_add(map, 'hull_health', 60);

ds_map_add(map, 'crew_capacity', 2);
ds_map_add(map, 'cargo_capacity', 12);
ds_map_add(map, 'fuel_capacity', 3);
ds_map_add(map, 'elec_capacity', 100);
ds_map_add(map, 'heat_capacity', 250);
ds_map_add(map, 'module_capacity', 2);

ds_map_add(map, 'weapon_capacity', 1);
ds_map_add(map, 'turret_mounts_max', 3);
ds_map_add(map, 'turret_mounts_base', 1);
ds_map_add(map, 'turret_mount_len_0', 30);
ds_map_add(map, 'turret_mount_dir_0', 0);
ds_map_add(map, 'turret_mount_len_1', 30);
ds_map_add(map, 'turret_mount_dir_1', 180);
ds_map_add(map, 'turret_mount_len_2', 0);
ds_map_add(map, 'turret_mount_dir_2', 0);

ds_map_add(map, 'fixed_mounts_max', 2);
ds_map_add(map, 'fixed_mounts_base', 1);
ds_map_add(map, 'fixed_mount_len_0', point_distance(40, 26, 25, 4));
ds_map_add(map, 'fixed_mount_dir_0', point_direction(40, 26, 25, 4));
ds_map_add(map, 'fixed_mount_len_1', point_distance(40, 26, 25, 43));
ds_map_add(map, 'fixed_mount_dir_1', point_direction(40, 26, 25, 43));

ds_map_add(map, 'missle_capacity', 1);

ds_map_add(map, 'engine_points', 1);
ds_map_add(map, 'engine_point_len_0', 38);
ds_map_add(map, 'engine_point_dir_0', 180);
