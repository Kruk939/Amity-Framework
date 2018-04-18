disableSerialization;
//closing open dialog
if(dialog) then {
      closeDialog 0;
};
private _ok = createDialog "phone_last_calls";
if(!_ok) exitWith {}; //couldn't open dialog
[] call ClientModules_Phone_fnc_setBackground;
{
      private _contact = [_x] call ClientModules_Phone_fnc_findContact;
      private _name = _x;
      if(count _contact != 0) then {
            _name = _contact select 2;
      };
      private _index = lbAdd [1500, _name];
      lbSetData [1500, _index, _x];
} foreach phone_var_last_calls;
if((count phone_var_last_calls) != 0) then {
      lbSetCurSel [1500, 0];
};
