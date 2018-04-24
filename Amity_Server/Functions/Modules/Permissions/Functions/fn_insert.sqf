params[["_var", ""], ["_name", ""]];
if(_var == "" || _name == "") exitWith { []; };
waitUntil{permissions_var_inited};

if([_var] call ServerModules_Permissions_fnc_exists) exitWith { []; };

private _ret = [format["permission_insert:%1:%2", _var, _name], 2] call ExternalS_fnc_ExtDBasync;
if(count _ret != 0) then {
      permissions_var_all pushBack _ret;
      publicVariable "permissions_var_all";
};
_ret;
