params[["_plate", ""]];
if(_plate == "") exitWith { true; };
if(count _plate != 7) exitWith { true; };
private _ret = [format["core_garage_exists_plate:%1", _plate], 2] call ExternalS_fnc_ExtDBasync;
_ret = _ret select 0;
_ret;
