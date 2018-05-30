params[["_pos", []], ["_type", ""]];
if(count _pos == 0 || _type == "") exitWith {};
private _config = switch(_type) do {
      case "shop": { missionConfigFile >> "Robbery" >> "Shop"};
      case "atm": { missionConfigFile >> "Robbery" >> "ATM"};
      case "mainbank": { missionConfigFile >> "Robbery" >> "MainBank"};
      default {
            configNull;
      };
};
if(isNull _config) exitWith {};
if(getNumber(_config >> "Notify" >> "enabled") == 0) exitWith {};

private _name = format["robbed_facility_%1", time * random(20)];
private _marker = createMarkerLocal [_name, _pos];
private _display = (getText(_config >> "Notify" >> "markerName")) call BIS_fnc_localize;
_marker setMarkerShapeLocal (getText(missionConfigFile >> "Robbery" >> "Config" >> "Marker" >> "shape"));
_marker setMarkerTypeLocal  (getText(missionConfigFile >> "Robbery" >> "Config" >> "Marker" >> "type"));
_marker setMarkerColorLocal (getText(missionConfigFile >> "Robbery" >> "Config" >> "Marker" >> "color"));
_marker setMarkerTextLocal  _display;
private _time = getNumber(missionConfigFile >> "Robbery" >> "Config" >> "Marker" >> "time");
[_name, _time] spawn {
      params["_name", "_time"];
      uiSleep _time;
      deleteMarkerLocal _name;
};
[getText(_config >> "Notify" >> "message"), true] call Client_fnc_doMsg;
