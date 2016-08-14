#include "..\..\script_macros.hpp"
if (FETCH_CONST(life_adminlevel) < 4) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

_result = ["Player or vehicle markers?", "Admin Markers", "Player", "Vehicle"] call BIS_fnc_guiMessage;
if (_result) then 
    {
        if (life_admin_playerMarkers) then 
        {
            life_admin_playerMarkers = false;
            hint localize "STR_ANOTF_MDisabled";
        } else {
            life_admin_playerMarkers = true;
            hint localize "STR_ANOTF_MEnabled";
        };
    } else {
        if (life_admin_vehicleMarkers) then 
        {
            life_admin_vehicleMarkers = false;
            hint localize "STR_ANOTF_VMDisabled";
        } else {
            life_admin_vehicleMarkers = true;
            hint localize "STR_ANOTF_VMEnabled";
        };    
    };
