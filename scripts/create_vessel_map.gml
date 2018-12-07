////    create_vessel_map(ship_map, engine_map, reactor_map)
var map = ds_map_create();
ds_map_replace(map, 'dat_ship', argument0);
ds_map_replace(map, 'dat_engine', argument1);
ds_map_replace(map, 'dat_reactor', argument2);
return map;
