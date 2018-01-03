params[["_text", ""], ["_sound", true], ["_additional", []]];
private _custom_fnc = getText (missionConfigFile >> "Amity" >> "Custamization" >> "Functions" >> "domsg");
if(_custom_fnc != "" && !isNil _custom_fnc) then {
      _this call (call compile _custom_fnc);
} else {
      //do custom message here
      if(_sound) then {
            hint _text;
      } else {
            hintSilent _text;
      };
};
