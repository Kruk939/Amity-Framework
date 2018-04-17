disableSerialization;
//closing open dialog
if(dialog) then {
      closeDialog 0;
};
private _ok = createDialog "phone_customize";
if(!_ok) exitWith {}; //couldn't open dialog
[] call ClientModules_Phone_fnc_setBackground;

phone_var_data params["", "", "_ring_id", "_frame_id", "_background_id", ""];
private _frame_index = 0;
private _background_index = 0;
private _ring_index = 0;
{
      _x params["_id", "_path", "_name", "_subscriber", "_private"];
      if(_private == 0 || _background_id == _id) then {
            if(_subscriber == 1) then {
                  _name = format["[SUB] %1", _name];
            };
            private _index = lbAdd [1500, _name];
            lbSetData [1500, _index, str(_x)];
            if(_background_id == _id) then { _background_index = _index; };

      };
} foreach phone_var_backgrounds;
if((count phone_var_backgrounds) != 0) then {
      lbSetCurSel [1500, _background_index];
};

{
      _x params["_id", "_path", "_name", "_subscriber", "_private"];
      if(_private == 0 || _frame_id == _id) then {
            if(_subscriber == 1) then {
                  _name = format["[SUB] %1", _name];
            };
            private _index = lbAdd [1501, _name];
            lbSetData [1501, _index, str(_x)];
            if(_frame_id == _id) then { _frame_index = _index; };

      };
} foreach phone_var_frames;
if((count phone_var_frames) != 0) then {
      lbSetCurSel [1501, _frame_index];
};

{
      _x params["_id", "_path", "_name", "_subscriber", "_private"];
      if(_private == 0 || _ring_id == _id) then {
            if(_subscriber == 1) then {
                  _name = format["[SUB] %1", _name];
            };
            private _index = lbAdd [1502, _name];
            lbSetData [1502, _index, str(_x)];
            if(_ring_id == _id) then { _ring_index = _index; };

      };
} foreach phone_var_ringtones;
if((count phone_var_ringtones) != 0) then {
      lbSetCurSel [1502, _ring_index];
};
