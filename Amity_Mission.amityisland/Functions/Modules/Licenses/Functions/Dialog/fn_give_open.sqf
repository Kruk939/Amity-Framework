params[["_target",objNull]];

//variable check
if(player getVariable["faction_id", -1] == -1) exitWith {};
if(isNull _target) exitWith {};
private _ids = ["give"] call ClientModules_Licenses_fnc_getAvialableLicenses;
if((count _ids) == 0) exitWith {};

//display/dialog check
disableSerialization;
private _ok = createDialog "license_give";
if(!_ok) exitWith {};
private _display = findDisplay 666600;
if(isNull _display) exitWith { closeDialog 0; };

//addding licenses to combobox
{
      if((_x select 0) IN _ids) then {
            private _index = lbAdd[2100, (_x select 2)];
            lbSetData[2100, _index, str(_x select 0)];
      };
} forEach licenses_var_all;
[player, "ClientModules_Licenses_fnc_give_receive"] remoteExec["ClientModules_Licenses_fnc_getLicenses", _target];

//setting varaibles
_display setVariable["target", _target];




ctrlSetText [1000, (name _target)];
_display = findDisplay 666600;
_display setVariable ["target",_target];
