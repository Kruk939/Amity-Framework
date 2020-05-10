private _onObjectAttachedDetach = {
      private _obj = _this;
      if(isNull _obj) exitWith {};
      private _mod_id = _obj getVariable["house_module_id", -1];
      if(_mod_id != -1) then {
            [_obj] remoteExecCall["ServerModules_Housing_fnc_moduleUpdate", 2];
      };
};
["onObjectAttachedDetach", _onObjectAttachedDetach] call Client_fnc_eventAdd;
