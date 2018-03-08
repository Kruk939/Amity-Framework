params[["_bankaccount", ""], ["_type", ""], ["_amount", 0], ["_player", objNull], ["_function", ""]];
if(_bankaccount == "" || _type == "") exitWith {};
private _query = switch(_type) do {
      case "ADD": {format["core_bank_add:%1:%2", _bankaccount, _amount]};
      case "SUB": {format["core_bank_remove:%1:%2", _bankaccount, _amount]};
      default {""};
};
if(_query != "") then {
      private _response = [_query, 2] call ExternalS_fnc_ExtDBasync;
      if((count _response) != 0) then {
            private _cash = (_response select 0) select 0;
            if(!isNull _player && _function != "") then {
                  [_cash] remoteExec [_function, _player];
            };
      };
};
