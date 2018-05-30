params[["_pos", []], ["_type", ""]];
if(count _pos == 0 || _type == "") exitWith {};
private _config = switch(_type) do {
      case "shop": { missionConfigFile >> "Robbery" >> "Shop"};
      case "atm": { missionConfigFile >> "Robbery" >> "ATM"};
      case "mainbank": { missionConfigFile >> "Robbery" >> "MainBank"};
      default { configNull; };
};
if(isNull _config) exitWith {};
if(getNumber(_config >> "Notify" >> "enabled") == 0) exitWith {};
private _factions = getArray(_config >> "Notify" >> "factions");
private _notify = [];
{
      _x params["_id", "_chance"];
      if(random(100) <= _chance) then {
            private _members = [_id] call Client_fnc_factionGetActivePlayers;
            _notify = _notify + _members;
      };
} forEach _factions;
if(count _notify != 0) then {
      [_pos, _type] remoteExec["ClientModules_Robbery_fnc_notifyPlayer", _notify];
};
