disableSerialization;

phone_var_data params["", "", "", "_sk", "_bg", ""];
private _background = [_bg] call ClientModules_Phone_fnc_getBackground;
private _frame = [_sk] call ClientModules_Phone_fnc_getFrame;

ctrlSetText [1201, (_background select 1)];
ctrlSetText [1200, (_frame select 1)];
private _display = findDisplay 1103;
if(!isNull(_display)) then {
      private _number = player getVariable ["phone_number", ""];
      private _topBarRight = _display displayCtrl 1099;
      if(!isNull (_topBarRight)) then {
            ctrlSetText [1099, _number];
      };
      private _topBarLeft = _display displayCtrl 1099;
      if(!isNull (_topBarLeft)) then {
            ctrlSetText [1098, "90%"];
      };
};
