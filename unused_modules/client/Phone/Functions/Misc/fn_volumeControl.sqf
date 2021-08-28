params[["_type", "add"], ["_value", 1]];
private _volume = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwVolume;
if(_type == "add") then {
      _volume = _volume + _value;
} else {
      _volume = _volume - _value;
};

if(_volume > 10) then { _volume = 10; };
if(_value < 1) then { _value = 1; };
hint format["You have changed your volume to: %1%2", (_volume * 10), "%"];
[(call TFAR_fnc_ActiveSWRadio), _volume] call TFAR_fnc_setSwVolume;
