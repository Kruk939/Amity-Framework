//params[["_text", ""], ["_sound", true], ["_additional", []]];
private _custom_fnc = getText (missionConfigFile >> "Amity" >> "Custamization" >> "Functions" >> "addAction");
if(_custom_fnc != "" && !isNil _custom_fnc) then {
      _this call (call compile _custom_fnc);
} else {
      amity_var_actions pushBack _this;
};
