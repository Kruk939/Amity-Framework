//params[["_text", ""], ["_sound", true], ["_additional", []]];
private _custom_fnc = getText (missionConfigFile >> "Amity" >> "Custamization" >> "Functions" >> "progressBar");
if(_custom_fnc != "" && !isNil _custom_fnc) then {
      _this call (call compile _custom_fnc);
} else {
      //do custom progressBar here
};
