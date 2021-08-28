params[["_variable", ""]];
if(_variable == "") exitWith {};

if(_variable IN anithack_var_unknown_variables) then {
      [format["antihack_update_graylist:%1", _variable], 2] call ExternalS_fnc_ExtDBasync;
} else {
      [0, format["antihack_insert_graylist:%1", _variable]] call ExternalS_fnc_ExtDBquery;
      anithack_var_unknown_variables pushBack _variable;
};
