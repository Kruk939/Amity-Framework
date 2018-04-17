disableSerialization;
//closing open dialog
if(dialog) then {
      closeDialog 0;
};
private _ok = createDialog "phone_customize";
if(!_ok) exitWith {}; //couldn't open dialog
[] call ClientModules_Phone_fnc_setBackground;

private _background_id = player getVariable["phone_background", 1];
private _frame_id = player getVariable["phone_skin", 1];
private _ring_id = player getVariable ["phone_ring", 1];
private _frame_index = 0;
private _background_index = 0;
private _ring_index = 0;
{
      _x params["_id", "_path", "_subscriber", "_private", "_name"];
      if(_private == 0 || _background_id == _id) then {
            if(_subscriber == 1) then {
                  _name = format["[SUB] %1", _name];
            };
            private _index = lbAdd [1500, _name];
            lbSetData [1500, _index, str(_x)];
            if(_background_id == _id) then { _background_index = _index; };

      };
} foreach ORP_Phone_Backgrounds;
if((count ORP_Phone_Backgrounds) != 0) then {
      lbSetCurSel [1500, _background_index];
};

{
      _x params["_id", "_path", "_subscriber", "_private", "_name"];
      if(_private == 0 || _frame_id == _id) then {
            if(_subscriber == 1) then {
                  _name = format["[SUB] %1", _name];
            };
            private _index = lbAdd [1501, _name];
            lbSetData [1501, _index, str(_x)];
            if(_frame_id == _id) then { _frame_index = _index; };

      };
} foreach ORP_Phone_Frames;
if((count ORP_Phone_Frames) != 0) then {
      lbSetCurSel [1501, _frame_index];
};

{
      _x params["_id", "_path", "_subscriber", "_private", "_name"];
      if(_private == 0 || _ring_id == _id) then {
            if(_subscriber == 1) then {
                  _name = format["[SUB] %1", _name];
            };
            private _index = lbAdd [1502, _name];
            lbSetData [1502, _index, str(_x)];
            if(_ring_id == _id) then { _ring_index = _index; };

      };
} foreach ORP_Phone_Ringtones;
if((count ORP_Phone_Ringtones) != 0) then {
      lbSetCurSel [1502, _ring_index];
};
