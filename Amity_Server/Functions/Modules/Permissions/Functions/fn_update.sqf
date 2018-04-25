params[["_data", []], ["_faction_id", -1]];
if(count _data == 0) exitWith {};

{
      _x params["_id", "_level"];
      [0, format["permissions_update_id:%1:%2", _id, _level]] call ExternalS_fnc_ExtDBquery;
} forEach _data;

if(_faction_id != -1) then {
      private _members = [_faction_id] call Client_fnc_factionGetActivePlayers;
      ["onFactionPermissionsChanged", [_data]] remoteExec["Client_fnc_eventCall", _members];
};
