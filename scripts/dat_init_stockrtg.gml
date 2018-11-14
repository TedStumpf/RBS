/// dat_init_stockrtg()
var map = ds_map_create();
var sid = pow_stockrtg;
global.power_core_data[sid] = map;

ds_map_add(map, 'id', sid);
ds_map_add(map, 'parent_company', comp_inteliware);
ds_map_add(map, 'name', 'RTG Basic');

ds_map_add(map, 'mass', 500);
ds_map_add(map, 'fuel_consumption', 0);
ds_map_add(map, 'power_generation', 20);
ds_map_add(map, 'power_storage', 1000);
ds_map_add(map, 'heat_generation', 1);
