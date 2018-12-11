/// vessel_add_weapon(weapon)
var dat_ship = vessel_get_ship();
var mounts = dat_get_default(dat_ship, 'fixed_mounts_current', 0);
for (var i = 0; i < mounts; i++)    {
    var key = 'dat_weapon_' + string(i);
    if ((!ds_map_exists(vessel, key)) || (dat_get_default(vessel, key, noone) == noone))  {
        ds_map_replace(vessel, key, argument0);
        return true;
    }
}
return false;
