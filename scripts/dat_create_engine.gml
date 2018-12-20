/// dat_create_engine(engine_id)
var map = ds_map_create();
ds_map_replace(map, 'core', global.engine_core_data[argument0]);
ds_map_replace(map, 'item_type', itm_engine);
return map;

