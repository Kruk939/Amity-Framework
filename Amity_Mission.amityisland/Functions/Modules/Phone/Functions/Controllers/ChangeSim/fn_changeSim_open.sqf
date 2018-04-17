disableSerialization;
//closing open dialog
if(dialog) then {
      closeDialog 0;
};
private _ok = createDialog "phone_change_sim";
if(!_ok) exitWith {}; //couldn't open dialog
[] call ClientModules_Phone_fnc_setBackground;
private _curIn = 0;
private _sim = player getVariable ["phone_active_number", 0];
private _sim_id = (_sim select 0);
{
      _x  params["_id", "", "_number", "_balance", "_offer_id"];
      private _index = lbAdd [1500, _number];
      lbSetData [1500, _index, str(_x)];
      if(_sim_id == _id) then {
            _curIn = _forEachIndex;
      };
} foreach phone_var_numbers;
if((count phone_var_numbers) != 0) then {
      lbSetCurSel [1500, _curIn];
};
