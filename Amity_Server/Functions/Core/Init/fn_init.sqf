Amity_Server_Inited = false;
["amity_framework", "SQL_CUSTOM", "amity_framework.ini"] spawn ExternalS_fnc_ExtDBinit;
sleep 3;

[] call Server_fnc_initModules;
Amity_Server_Inited = true;
