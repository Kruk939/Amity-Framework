if(count FactionVariables_var_current == 0) exitWith {};

{
      _x params["", "", "_variable"];
      player setVariable[_variable, nil];
} forEach FactionVariables_var_current;
