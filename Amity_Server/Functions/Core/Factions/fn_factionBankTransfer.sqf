params[["_type", ""], ["_faction_id", -1], ["_amount", 0]];
private _query = "";
if(_type == "" || _faction_id == -1 || _amount == 0) exitWith {};
_query = switch(_type) do {
      case "SUB": {"core_faction_bank_remove"};
      case "ADD": {"core_faction_bank_add"};
      default {""};
};
if(_query != "") then {
      _query = format["%1:%2:%3", _query, _faction_id, _amount];
      [_query, 2] call ExternalS_fnc_ExtDBasync;
};
