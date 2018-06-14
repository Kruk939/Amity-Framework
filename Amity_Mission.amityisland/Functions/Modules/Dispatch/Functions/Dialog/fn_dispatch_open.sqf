params[["_faction_id", player getVariable["faction_id", -1]]];
if(_faction_id == -1) exitWith {};
private _dispatch = [_faction_id] call ClientModules_Dispatch_fnc_getFaction;
if(count _dispatch == 0) exitWith {};

//permision check
if(!(["phone_dispatch_sign"] call Client_fnc_checkPermission)) exitWith { ["STR_CORE_PERMISSION_ACCESS_DENIED", true] call Client_fnc_domsg; };

disableSerialization;
if(dialog) then { closeDialog 0; };
private _ok = createDialog "phone_dispatch";
if(!_ok) exitWith {};
private _display = findDisplay 5550001;
if(isNull _display) exitWith { closeDialog 0; };
_display setVariable["data", _dispatch];
{
      _x params["_id", "", "", "", "_short", "_full"];
      private _index = lbAdd[2100, format["[%1] - %2", _short, _full]];
      lbSetData[2100, _index, str(_id)];
} forEach _dispatch;
lbSetCurSel[2100, 0];
