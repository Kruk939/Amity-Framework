disableSerialization;
//closing open dialog
if(dialog) then {
      closeDialog 0;
};
private _ok = createDialog "phone_last_calls";
if(!_ok) exitWith {}; //couldn't open dialog
[] call ClientModules_Phone_fnc_setBackground;
{
      private _name = [_x] call ClientModules_phone_fnc_getNumber_name;
      private _index = lbAdd [1500, _name];
      lbSetData [1500, _index, _x];
} foreach ORP_phoneLastCalls;
if((count ORP_phoneLastCalls) != 0) then {
      lbSetCurSel [1500, 0];
};
