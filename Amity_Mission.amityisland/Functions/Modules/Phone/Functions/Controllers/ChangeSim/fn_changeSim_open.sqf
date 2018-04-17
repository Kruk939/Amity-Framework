disableSerialization;
//closing open dialog
if(dialog) then {
      closeDialog 0;
};
private _ok = createDialog "phone_change_sim";
if(!_ok) exitWith {}; //couldn't open dialog
[] call ClientModules_Phone_fnc_setBackground;
private _curIn = 0;
private _cur_sim = player getVariable ["phone_id", 0];
{
      _x params["_id", "_owner_uid", "_number"];
      private _index = lbAdd [1500, _number];
      lbSetData [1500, _index, str(_x)];
      if(_cur_sim == _id) then {
            _curIn = _forEachIndex;
      };
} foreach ORP_phoneNumbers;
if((count ORP_phoneNumbers) != 0) then {
      lbSetCurSel [1500, _curIn];
};
