params[["_id", -1]];
private _found = false;
if(_id == -1 || (count phone_var_numbers == 0)) exitWith { _found; };
private _index = -1;
{
      if((_x select 0) == _id) exitWith {
            _found = true;
            _index = _forEachIndex;
      };
} forEach phone_var_numbers;
if(_index != -1) then {
      phone_var_numbers deleteAt _index;
};
[_id] remoteExecCall ["ServerModules_Phone_fnc_removeSim", 2];
_found;
