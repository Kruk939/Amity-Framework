params[["_id", -1]];
if(_id == -1) exitWith {};
private _found = false;
private _index = -1;
{
      if(_id == (_x select 0)) then { _index = _forEachIndex; _found = true; };
} forEach phone_var_contacts;
if(_found) then {
      phone_var_contacts deleteAt _index;
      [_id] remoteExecCall ["ServerModules_Phone_fnc_removeContact", 2];
};
_found;
