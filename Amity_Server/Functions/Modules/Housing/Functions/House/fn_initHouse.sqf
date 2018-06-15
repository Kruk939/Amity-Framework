params[["_target", objNull], ["_data", []]];
if(isNull _target || (count _data) == 0) exitWith {};
_data params["_id", "", "_profile_id", "_faction_id", "", "_mods", ""];
if(typeName _profile_id == "OBJECT") then { _profile_id = -1; };
if(typeName _faction_id == "OBJECT") then { _faction_id = -1; };


//public variables
_target setVariable["house_id", _id, true];
_target setVariable["house_profile_id", _profile_id, true];
_target setVariable["house_faction_id", _faction_id, true];

{
      [_target, _x] call ServerModules_Housing_fnc_initModule;
} forEach _mods;
