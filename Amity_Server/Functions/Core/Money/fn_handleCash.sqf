#define ADD 1
#define REMOVE 0

params[["_player", objNull], ["_type", 0], ["_amount", 0]];
if(isNull _player) exitWith {};
if(_amount < 0) then { _amount = 0 - _amount; };

private _profile_id = player getVariable["profile_id", 0];
private _query = [];
if(_type == ADD) then {
      _query = [format["core_cash_add:%1:%2", _profile_id, _amount], 2] call ExternalS_fnc_ExtDBasync;
} else {
      _query = [format["core_cash_add:%1:%2", _profile_id, _amount], 2] call ExternalS_fnc_ExtDBasync;
};
if(count _query > 0) then {
      private _cash = ((_query select 0) select 0);
      _player setVariable["cash", _cash, true];
};
