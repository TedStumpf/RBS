/// dat_init_hyper01()
var map = ds_map_create();
var sid = eng_hyper01;
global.engine_core_data[sid] = map;

ds_map_add(map, 'id', sid);
ds_map_add(map, 'parent_company', comp_orion);
ds_map_add(map, 'name', 'Hyper-01');
ds_map_add(map, 'color', c_aqua);

ds_map_add(map, 'mass', 450);
ds_map_add(map, 'fuel_type', fuel_hydrazine);
ds_map_add(map, 'engine_thrust', 700000);
ds_map_add(map, 'engine_rot', 30000);
ds_map_add(map, 'engine_consumption', 0.004);
ds_map_add(map, 'heat_generation', 1);

