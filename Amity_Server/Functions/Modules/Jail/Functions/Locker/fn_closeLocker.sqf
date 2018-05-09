params[["_holder", objNull]];
if(isNull _holder) exitWith {};
private _items = [_holder] call Client_fnc_getCargo;
private _clear = true;
{
      if((count _x) != 0) exitWith {
            _clear = false;
      };
} forEach _items;
private _id = _holder getVariable["id", -1];
if(_clear) then {
      if(_id != -1) then {
            [0, format["jail_delete_locker:%1", _id]] call ExternalS_fnc_ExtDBquery;
      };
} else {
      if(_id != -1) then {
            [0, format["jail_update_locker:%1:%2", _id, _items]] call ExternalS_fnc_ExtDBquery;
      } else {
            private _profile_id = _holder getVariable["profile_id", -1];
            private _jail_id = _holder getVariable["jail_id", -1];
            if(_jail_id == -1 || _profile_id == -1) exitWith {};
            [0, format["jail_insert_locker:%1:%2:%3", _profile_id, _jail_id, _items]] call ExternalS_fnc_ExtDBquery;
      };
};
[_holder] call Client_fnc_clearCargo;
_holder setVariable["locker_open", nil, true];
_holder setVariable["locked", true, true];
_holder setVariable["profile_id", nil];
_holder setVariable["id", nil];
