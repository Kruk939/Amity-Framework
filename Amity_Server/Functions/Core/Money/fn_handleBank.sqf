#define ADD 1
#define REMOVE 0

params[["_player", objNull], ["_type", 0], ["_amount", 0],"_bankaccount"];
if(isNull _player) exitWith {};
//if(_amount < 0) then { _amount = 0 - _amount; };

//private _profile_id = player getVariable["profile_id", 0];
private _bank = _player getVariable "bank";
private _query = [];
private _newbank = [];
if(_type == ADD) then {
      _query = [format["core_bank_add:%1:%2", _bankaccount, _amount], 2] call ExternalS_fnc_ExtDBasync;
} else {
      _query = [format["core_bank_remove:%1:%2", _bankaccount, _amount], 2] call ExternalS_fnc_ExtDBasync;
};
if(count _query > 0) then {
      private _bankmoney = ((_query select 0) select 0);
      {
            if ((_x select 0) == _bankaccount) then {
                  _newbank = [_bankaccount,_bankmoney];
                  _newbank pushBack _newbank;
            } else {
                  _newbank pushBack _x;
            };
      } forEach _bank;
      _player setVariable["bank", _newbank, true];
};
