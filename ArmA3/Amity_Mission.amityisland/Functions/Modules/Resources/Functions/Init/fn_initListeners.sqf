player addEventHandler["Fired", {_this call ClientModules_Resources_fnc_HandleFired;}];
private _reaction = {
      private _handle = false;
      if(Resources_var_reacted == 1) then { Resources_var_reacted = 3; _handle = true; };
      _handle;
};
[219, [objNull, objNull, objNull, objNull], _reaction] call Client_fnc_keyHandlerAdd;
