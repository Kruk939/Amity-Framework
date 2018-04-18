private _array = (getArray(missionConfigFile >> "Resources" >> "Process" >> "Metal"));
[] call ClientModules_Resources_fnc_getHolder;
private _onFinish = {
      (_this select 0) params["_toRemove", "_toAdd"];
      _toRemove params["_toRemove_class", "_toRemove_amount"];
      _toAdd params["_toAdd_class", "_toAdd_amount"];
      private _i = 0;
      for [{}, {_i < _toRemove_amount}, {_i=_i+1}] do {
            player removeItem _toRemove_class;
      };
      Resources_var_holder addItemCargo [_toAdd_class, _toAdd_amount * _toRemove_amount];
};
private _onFailure = {};
{
      _x params["_processed", "_result", "_count"];
      private _amount = [_processed] call Client_fnc_countItems;
      private _item = [_processed] call client_fnc_fetchItem;
      _item params ["", "_name", "", ""];
      if(_amount > 0) exitWith {
            [_amount * 10, [[_processed, _amount], [_result, _count]],_onFinish,_onFailure, format["Processing %1x %2", _amount, _name]] call Client_fnc_progressBar;
      };
} forEach _array;
