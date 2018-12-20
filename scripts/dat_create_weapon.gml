/// dat_create_weapon(weapon_id)
var map = ds_map_create();
ds_map_replace(map, 'core', global.weapon_core_data[argument0]);
ds_map_replace(map, 'item_type', itm_weapon);
return map;

