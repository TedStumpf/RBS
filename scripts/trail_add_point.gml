/// trail_add_point(trail, x, y, dir)
with (argument0)    {
    if (ds_list_size(trail_list) >= max_size)   {
        repeat(3)   ds_list_delete(trail_list, ds_list_size(trail_list) - 1);
    }

    ds_list_insert(trail_list, 0, argument3);
    ds_list_insert(trail_list, 0, argument2);
    ds_list_insert(trail_list, 0, argument1);
}
