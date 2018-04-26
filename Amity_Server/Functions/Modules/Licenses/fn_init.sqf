[0, "licenses_delete_old"] call ExternalS_fnc_ExtDBquery;
licenses_var_all = = ["licenses_select_all", 2] call ExternalS_fnc_ExtDBasync;
publicVariable "licenses_var_all";
