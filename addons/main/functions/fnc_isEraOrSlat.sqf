#include "script_component.hpp"

params ["_vehicle", "_hitPoint"];

GVAR(eraOrSlatCache) getOrDefaultCall [format ["%1$%2", typeOf _vehicle, _hitPoint], {
    private _hitPointSimulation = getText (configOf _vehicle >> "HitPoints" >> _hitPoint >> "simulation");
    ((toLowerANSI _hitPointSimulation) in ["armor_slat", "armor_era_heavy", "armor_era_light"])
}, true];
