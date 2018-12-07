/// dat_init_hyper03()
var map = ds_map_create();
var sid = eng_hyper03;
global.engine_core_data[sid] = map;

ds_map_add(map, 'id', sid);
ds_map_add(map, 'parent_company', comp_orion);
ds_map_add(map, 'name', 'Hyper-03');
ds_map_add(map, 'color', make_colour_rgb(250, 140, 20));

ds_map_add(map, 'mass', 500);
ds_map_add(map, 'fuel_type', fuel_hydrazine);
ds_map_add(map, 'engine_thrust', 8000009);
ds_map_add(map, 'engine_rot', 35000);
ds_map_add(map, 'engine_consumption', 0.005);
ds_map_add(map, 'heat_generation', 1.2);

