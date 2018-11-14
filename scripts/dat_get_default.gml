/// dat_get_default(map, key, default)
if (ds_map_exists(argument0, argument1))    {
    return ds_map_find_value(argument0, argument1);
}
return argument2;
