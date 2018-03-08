params["_text", ["_sound", true], ["_additional", []]];
private _custom_fnc = getText (missionConfigFile >> "Amity" >> "Custamization" >> "Functions" >> "domsg");
if(typeName _text == "ARRAY") then {
      _text params["_t"];
      if(isLocalized _t) then {
            _t = localize _t;
            _text set [0, _t];
      };
      _text = format _text;
} else {
      if(typeName _text == "STRING") then {
            if(isLocalized _text) then {
                  _text = localize _text;
            };
      };
};

if(typeName _text != "STRING") exitWith {
      diag_log format["Client_fnc_domsg: Cannot convert use this function, %1 is not type of STRING, it is %2", _text, typeName _text];
      diag_log format["Passed params: %1", _this];
      if(typeName (_this select 0) == "ARRAY") then {
            diag_log format["First argument in array should be TEXT and it is: %1", typeName ((_this select 0) select 0)];
      };
};
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
