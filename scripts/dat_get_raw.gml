/// dat_get_raw(base_map, key, default)
var par_map = ds_map_find_value(argument0, 'core');
//show_debug_message(argument1 + ": " + string(ds_exists(par_map, ds_type_map)) + ", " + string(ds_map_exists(par_map, argument1)));
if ((ds_exists(par_map, ds_type_map)) && (ds_map_exists(par_map, argument1)))   {
    //show_debug_message(string(ds_map_find_value(par_map, 'ship_name')));
    //show_debug_message(string(ds_map_find_value(par_map, argument1)));
    return ds_map_find_value(par_map, argument1);
}
return argument2;
