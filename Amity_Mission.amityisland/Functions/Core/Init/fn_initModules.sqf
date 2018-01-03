private _modules = getArray (missionConfigFile >> "Amity" >> "Setup" >> "modules");
private _fnc = "";

private _format = {
      params[["_namespace", ""], ["_function_name", ""]];
      private _ret = format["%1_fnc_%2", _namespace, _function_name];
      _ret;
};

//init variables
{
      private _fnc = [_x, "initVariables"] call _format;
      if(!(isNil _fnc)) then {
            [] call (call compile _fnc);
      };
} forEach _modules;

//init menu
{
      _fnc = [_x, "initMenu"] call _format;
      if(!(isNil _fnc)) then {
            [] call (call compile _fnc);
      };
} forEach _modules;


//init eventHandlers
{
      _fnc = [_x, "initEventHandlers"] call _format;
      if(!(isNil _fnc)) then {
            [] call (call compile _fnc);
      };
} forEach _modules;

//init listeners
{
      _fnc = [_x, "initListeners"] call _format;
      if(!(isNil _fnc)) then {
            [] call (call compile _fnc);
      };
} forEach _modules;

//init player
{
      _fnc = [_x, "initPlayer"] call _format;
      if(!(isNil _fnc)) then {
            [] call (call compile _fnc);
      };
} forEach _modules;
