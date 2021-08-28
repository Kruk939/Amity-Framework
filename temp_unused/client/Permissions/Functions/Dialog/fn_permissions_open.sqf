params[["_faction_id", -1]];
if(_faction_id == -1) then {
      _faction_id = player getVariable["faction_id", -1];
};
if(_faction_id == -1) exitWith {};

//permision check
if(!(["permissions_view"] call Client_fnc_checkPermission)) exitWith { ["STR_CORE_PERMISSION_ACCESS_DENIED", true] call Client_fnc_domsg; };

disableSerialization;
private _ok = createDialog "faction_permissions";
if(!_ok) exitWith {};
private _display = findDisplay 3000;
if(isNull _display) exitWith {};

_display setVariable["faction_id", _faction_id];
_display setVariable["changed", []];
[_faction_id, player, "ClientModules_Permissions_fnc_permissions_receive"] remoteExecCall ["Server_fnc_factionGetMembers", 2];
{
      _x params["_i", "_var", ""];
      private _index = -1;
      {
            if(_var == (_x select 1)) exitWith {
                  _index = lbAdd[1500, (_x select 2)];
            };
      } forEach permissions_var_all;
      if(_index != -1) then {
            lbSetData[1500, _index, str(_i)];
      };
} forEach permissions_var_active;
if(lbSize 1500 != 0) then {
      lbSetCurSel [1500, 0];
};
//permision check
if(!(["permissions_manage"] call Client_fnc_checkPermission)) then {
      ctrlEnable [1400, false];
      ctrlEnable [1601, false];
      ctrlEnable [1602, false];
      ctrlEnable [1603, false];
};
