/// dat_get_total_mass(ship_base, engine_base, power_base)
var mass = 0;
mass += dat_get_raw(argument0, 'mass', 0);
mass += dat_get_raw(argument1, 'mass', 0);
mass += dat_get_raw(argument2, 'mass', 0);
return mass;
