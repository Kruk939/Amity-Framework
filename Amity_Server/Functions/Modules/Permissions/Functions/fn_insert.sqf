params[["_var", ""], ["_name", ""]];
if(_var == "" || _name == "") exitWith { []; };
if(!isNil "_thisScript") then {
      waitUntil{!isNil "permissions_var_inited"};
      waitUntil{permissions_var_inited};
};
if(!(missionNamespace getVariable["permissions_var_inited", false])) exitWith {
      _this spawn (call compile _fnc_scriptName);
};

if([_var] call ServerModules_Permissions_fnc_exists) exitWith { []; };

private _ret = [format["permission_insert:%1:%2", _var, _name], 2] call ExternalS_fnc_ExtDBasync;
if(count _ret != 0) then {
      permissions_var_all pushBack _ret;
      publicVariable "permissions_var_all";
};
_ret;
