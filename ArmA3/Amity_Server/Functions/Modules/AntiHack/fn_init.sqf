anithack_var_bad_variables = [];
private _bad = ["antihack_select_blacklisted", 2] call ExternalS_fnc_ExtDBasync;
{
      anithack_var_bad_variables pushBack (_x select 1);
} forEach _bad;
publicVariable "anithack_var_bad_variables";

anithack_var_good_variables = [];
private _good = ["antihack_select_whitelisted", 2] call ExternalS_fnc_ExtDBasync;
{
      anithack_var_good_variables pushBack (_x select 1);
} forEach _good;

anithack_var_unknown_variables = [];
private _good = ["antihack_select_greylist", 2] call ExternalS_fnc_ExtDBasync;
{
      anithack_var_unknown_variables pushBack (_x select 1);
} forEach _good;
