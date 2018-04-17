disableSerialization;
if(!dialog) exitWith {};
params[["_type", ""]];
switch(_type) do {
      case "bg": {
            private _index = lbCurSel 1500;
            if(_index == -1) exitWith {};
            private _data = call compile (lbData[1500, _index]);
            _data params["_id", "_path", "_name", "_subscriber", "_private"];
            ctrlSetText[1201, _path];
      };
      case "frame": {
            private _index = lbCurSel 1501;
            if(_index == -1) exitWith {};
            private _data = call compile (lbData[1501, _index]);
            _data params["_id", "_path", "_name", "_subscriber", "_private"];
            ctrlSetText[1200, _path];
      };
      case "mute": {
            [] call ClientModules_Phone_fnc_disablePhone;
      };
      case "ring": {
            if(!isNull phone_var_current_sound) then { deleteVehicle phone_var_current_sound; };
            if((player getVariable["phone_disabled", false])) exitWith {};
            private _index = lbCurSel 1502;
            if(_index == -1) exitWith {};
            private _data = call compile (lbData[1502, _index]);
            _data params["_id", "_path", "_name", "_subscriber", "_private"];
            phone_var_current_sound = createSoundSource [_path, position player, [], 0];
            //playe sound
      };
      case "save": {
            private _background = 1;
            private _frame = 1;
            private _ringtone = 1;
            private _phone_id = (phone_var_data select 0);
            private _index = lbCurSel 1500;
            private _sub = player getVariable ["subscriber",0];
            private _can_change = true;
            if(_index != -1) then {
                  private _data = call compile (lbData[1500, _index]);
                  _data params["_id", "_path", "_name", "_subscriber", "_private"];
                  if(_sub != _subscriber && _subscriber == 1) then {
                        _can_change = false;
                  };
                  _background = _id;
            };
            _index = lbCurSel 1501;
            if(_index != -1) then {
                  private _data = call compile (lbData[1501, _index]);
                  _data params["_id", "_path", "_name", "_subscriber", "_private"];
                  if(_sub != _subscriber && _subscriber == 1) then {
                        _can_change = false;
                  };
                  _frame = _id;
            };
            _index = lbCurSel 1502;
            if(_index != -1) then {
                  private _data = call compile (lbData[1502, _index]);
                  _data params["_id", "_path", "_name", "_subscriber", "_private"];
                  if(_sub != _subscriber && _subscriber == 1) then {
                        _can_change = false;
                  };
                  _ringtone = _id;
            };
            if(_can_change) then {
                  phone_var_data set[2, _ringtone];
                  phone_var_data set[3, _frame];
                  phone_var_data set[4, _background];
                  [_phone_id, _ringtone, _frame, _background] remoteExec ["ServerModules_Phone_fnc_savePhone", 2];
            } else {
                  hint format["You cannot change it, because you are not subscriber. Select different customizations."];
            };
      };
};
