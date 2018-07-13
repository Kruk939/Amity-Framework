disableSerialization;
params[["_house_data", []]];
if(!dialog) exitWith {};
if(count _house_data == 0) exitWith { closeDialog 0; };
private _display = findDisplay 1110000;
if(isNull _display) exitWith { closeDialog 0; };
private _house = _display getVariable["house", objNull];
if(isNull _house) exitWith {};

_house_data params["_id", "", "_profile_id", "_faction_id", "", "_mods", "_furns"];
_display setVariable["house_id", _id];
_display setVariable["profile_id", _profile_id];
_display setVariable["faction_id", _faction_id];
_display setVariable["modules", _mods];
_display setVariable["furnitures", _furns];
diag_log format["House data: %1", _house_data];


private _is_bought = {
      private _ret = [];
      {
            if(_this == (_x select 1)) exitWith { _ret = _x; };
      } forEach _mods;
      _ret;
};

private _spawned = [];
private _spawned_ids = [];
private _objs = nearestObjects[getPos _house, [], 200];
{
      private _i = _x getVariable["house_furniture_id", -1];
      if(_i != -1) then {
            _spawned_ids pushBack _i;
            _spawned pushBack _x;
      };
} forEach _objs;

{
      _x params["_i", "", "_c", "_n", "", ""];
      private _mod = _i call _is_bought;
      private _prefix = "";
      if(count _mod != 0) then { _prefix = "[B] "; };
      private _index = lbAdd[1500, format["%1%2", _prefix, _n]];
      lbSetData[1500, _index, str(_i)];
} forEach housing_var_modules;

{
      _x params["_i", "_c", "", "", "_is_cargo"];
      private _name = getText(configFile >> "CfgVehicles" >> _c >> "displayName");
      private _idc = if(_i IN _spawned_ids) then { 1502; } else { 1501; };
      private _index = lbAdd[_idc, format["[%1], %2 %3", _i, _name, (if(_is_cargo == 1) then {"[C]"; } else {""; })]];
      lbSetData[_idc, _index, str(_i)];
} forEach _furns;
