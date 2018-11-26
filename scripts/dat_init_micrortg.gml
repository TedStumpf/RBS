/// dat_init_micrortg()
var map = ds_map_create();
var sid = pow_micrortg;
global.power_core_data[sid] = map;

ds_map_add(map, 'id', sid);
ds_map_add(map, 'parent_company', comp_inteliware);
ds_map_add(map, 'name', 'RTG Micro');

ds_map_add(map, 'mass', 200);
ds_map_add(map, 'fuel_consumption', 0);
ds_map_add(map, 'power_generation', 5);
ds_map_add(map, 'power_storage', 500);
ds_map_add(map, 'heat_generation', 0.4);
