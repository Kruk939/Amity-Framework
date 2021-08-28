params[["_newVariables", []]];
[] call ClientModules_FactionVariables_fnc_unloadVariables;
private _access = player getVariable["faction_access_level", -1];
if(_access == -1) exitWith {};

{
      _x params["", "", "_variable"];
      player setVariable[_variable, _access];
} forEach _newVariables;
FactionVariables_var_current = _newVariables;
