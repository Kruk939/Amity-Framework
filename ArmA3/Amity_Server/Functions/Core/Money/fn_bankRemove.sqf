params[["_id", -1]];
if(_id == -1) exitWith {};
private _bank = [_id] call Server_fnc_bankGetID;
_bank params["_id", "_account_number", "_profile_id", "_cash"];
if(_cash >= 0) then {
      private _query = format["core_bank_delete:%1", _id];
      [_query, 2] call ExternalS_fnc_ExtDBasync;
};
