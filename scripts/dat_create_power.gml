/// dat_create_power(power_id)
var map = ds_map_create();
ds_map_replace(map, 'core', global.power_core_data[argument0]);
ds_map_replace(map, 'item_type', itm_power);
return map;

