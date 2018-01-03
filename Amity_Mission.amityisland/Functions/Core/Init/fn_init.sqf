//init variables
[] call Client_fnc_miscVariables;

//init core functions
[] call Client_fnc_initEventHandlers;

//init loop
[] spawn Client_fnc_loop;

//init modules
[] call Client_fnc_initModules;
amity_var_inited = true;
