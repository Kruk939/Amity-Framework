params[["_house_id", -1], ["_cargo_only", true]];
private _h_data = [_house_id] call ServerModules_Housing_fnc_getHouseID;
if((count _h_data) == 0) exitWith {};
_h_data params["", "", "", "", "", "", "_furns"];
{
      if((_x select 4) == 1 || !(_cargo_only)) then {
            [_house_id, (_x select 0)] call ServerModules_Housing_fnc_spawnFurniture;
      };
} forEach _furns;
