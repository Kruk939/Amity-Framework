params[["_player", objNull], ["_type", ""], ["_amount", 0]];
if(isNull _player || _type == "") exitWith {};
if(_amount < 0) then { _amount = 0 - _amount; };

private _profile_id = player getVariable["profile_id", 0];
private _query = switch(_type) do {
      case "ADD": {format["core_cash_add:%1:%2", _profile_id, _amount]};
      case "SUB": {format["core_cash_remove:%1:%2", _profile_id, _amount]};
      default {""};
};
if(_query != "") then {
      private _response = [_query, 2] call ExternalS_fnc_ExtDBasync;
      if(count _response > 0) then {
            private _cash = ((_response select 0) select 0);
            _player setVariable["cash", _cash, true];
      };
};
