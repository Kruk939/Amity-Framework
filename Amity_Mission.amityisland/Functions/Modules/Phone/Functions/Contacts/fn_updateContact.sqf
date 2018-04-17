params[["_id", -1], ["_name", ""], ["_number", ""]];
private _found = false;
if(_id == -1 || _name == "" || _number == "") exitWith { _found; };
{
      if((_x select 0) == _id) exitWith {
            _x set[2, _name];
            _x set[3, _number];
            _found = true;
      };
} forEach phone_var_contacts;
if(_found) then {
      [_id, _name, _number] remoteExec ["ServerModules_Phone_fnc_updateContact", 2];
};
_found;
