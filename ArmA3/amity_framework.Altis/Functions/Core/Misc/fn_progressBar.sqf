params[["_time", 0], "_params", ["_onFinish", {}], ["_onFailure", {}], ["_title", ""]];
private _custom_fnc = getText (missionConfigFile >> "Amity" >> "Custamization" >> "Functions" >> "progressBar");
if(_custom_fnc != "" && !isNil _custom_fnc) then {
      _this call (call compile _custom_fnc);
} else {
      //do custom progressBar here
};
