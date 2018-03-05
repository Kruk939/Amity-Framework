diag_log "------------------------";
diag_log "Amity Server: Starting Up";
diag_log "------------------------";
secret_variable = true;
publicVariable "secret_variable";
Amity_Server_Inited = false;
["amity_framework", "SQL_CUSTOM", "amity_framework.ini"] spawn ExternalS_fnc_ExtDBinit;
sleep 3;

[] call Server_fnc_resetConnection;
[] call Server_fnc_initEventHandlers;
[] call Server_fnc_initModules;
Amity_Server_Inited = true;
