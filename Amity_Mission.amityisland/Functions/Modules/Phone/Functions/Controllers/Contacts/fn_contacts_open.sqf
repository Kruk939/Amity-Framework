disableSerialization;
//closing open dialog
if(dialog) then {
      closeDialog 0;
};
private _ok = createDialog "phone_contacts";
if(!_ok) exitWith {}; //couldn't open dialog
[] call ClientModules_Phone_fnc_setBackground;
{
      _x params["_id", "", "_name", "_number"];
      private _index = lbAdd [1500, _name];
      lbSetData [1500, _index, str(_x)];
} foreach phone_var_contacts;
if((count phone_var_contacts) != 0) then {
      lbSetCurSel [1500, 0];
};
