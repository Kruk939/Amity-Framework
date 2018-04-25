params[["_var", ""]];
private _custom_fnc = getText (missionConfigFile >> "Amity" >> "Custamization" >> "Functions" >> "checkPermission");
private _ret = false;
if(_custom_fnc != "" && !isNil _custom_fnc) then {
      _ret = _this call (call compile _custom_fnc);
} else {
      if(player getVariable["faction_id", -1] != -1 || _var == "") then {
            _ret = true;
      };
};
_ret;
