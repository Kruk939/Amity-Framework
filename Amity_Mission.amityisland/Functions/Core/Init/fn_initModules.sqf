private _modules = getArray (missionConfigFile >> "Amity" >> "Setup" >> "modules");
private _fnc = "";

private _format = {
      params[["_namespace", ""], ["_function_name", ""]];
      private _ret = format["%1_fnc_%2", _namespace, _function_name];
      _ret;
};

diag_log "--------------------- Loading modules";
diag_log "----------- Loading variables";
//init variables
{
      private _fnc = [_x, "initVariables"] call _format;
      if(!(isNil _fnc)) then {
            diag_log _fnc;
            [] call (call compile _fnc);
      };
} forEach _modules;

diag_log "----------- Loading menu";
//init menu
{
      _fnc = [_x, "initMenu"] call _format;
      if(!(isNil _fnc)) then {
            diag_log _fnc;
            [] call (call compile _fnc);
      };
} forEach _modules;


diag_log "----------- Loading eventHandlers";
//init eventHandlers
{
      _fnc = [_x, "initEventHandlers"] call _format;
      if(!(isNil _fnc)) then {
            diag_log _fnc;
            [] call (call compile _fnc);
      };
} forEach _modules;

diag_log "----------- Loading listeners";
//init listeners
{
      _fnc = [_x, "initListeners"] call _format;
      if(!(isNil _fnc)) then {
            diag_log _fnc;
            [] call (call compile _fnc);
      };
} forEach _modules;

diag_log "----------- Loading player";
//init player
{
      _fnc = [_x, "initPlayer"] call _format;
      if(!(isNil _fnc)) then {
            diag_log _fnc;
            [] call (call compile _fnc);
      };
} forEach _modules;
diag_log "--------------------- Modules loaded";
