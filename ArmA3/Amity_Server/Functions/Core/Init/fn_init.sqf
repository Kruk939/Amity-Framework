diag_log "------------------------";
diag_log "Amity Server: Starting Up";
diag_log "------------------------";
secret_variable = true;
publicVariable "secret_variable";
amity_var_events = [];
amity_var_vehicles = [];
Amity_Server_Inited = false;
["amity_framework", "SQL_CUSTOM", "amity_framework.ini"] spawn ExternalS_fnc_ExtDBinit;
sleep 3;
amity_var_variables = ["core_variables_get", 2] call ExternalS_fnc_ExtDBasync;

[] call Server_fnc_resetConnection;
[] call Server_fnc_initEventHandlers;
[] call Server_fnc_initModules;
Amity_Server_Inited = true;
