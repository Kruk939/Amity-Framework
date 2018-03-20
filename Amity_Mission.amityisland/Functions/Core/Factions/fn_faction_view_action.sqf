disableSerialization;
if(!dialog) exitWith {};
private _display = findDisplay 1034;
if(isNull _display) exitWith {};
params[["_type", ""]];

if(_type == "MEMBERS") exitWith {
      private _faction_id = _display getVariable["faction_id", -1];
      [_faction_id] call Client_fnc_faction_members_open;
};
if(_type == "VEHICLES") exitWith {
      private _faction_id = _display getVariable["faction_id", -1];
      [_faction_id] call Client_fnc_faction_manage_garage_open;
};
