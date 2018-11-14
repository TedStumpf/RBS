/// dat_create_ship(ship_id)
var map = ds_map_create();
ds_map_replace(map, 'core', global.ship_core_data[argument0]);
ds_map_replace(map, 'current_internal_health', ds_map_find_value(global.ship_core_data[argument0], 'internal    _health'));
ds_map_replace(map, 'current_hull_health', ds_map_find_value(global.ship_core_data[argument0], 'hull_health'));
ds_map_replace(map, 'color_0', c_white);
ds_map_replace(map, 'color_1', c_white);
ds_map_replace(map, 'color_2', c_blue);
return map;

