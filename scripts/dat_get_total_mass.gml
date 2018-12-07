/// dat_get_total_mass(vessel)
var dat_ship = dat_get_default(argument0, 'dat_ship', -1);
var dat_engine = dat_get_default(argument0, 'dat_engine', -1);
var dat_reactor = dat_get_default(argument0, 'dat_reactor', -1);

var mass = 0;
mass += dat_get_raw(dat_ship, 'mass', 0);
mass += dat_get_raw(dat_engine, 'mass', 0);
mass += dat_get_raw(dat_reactor, 'mass', 0);
return mass;
