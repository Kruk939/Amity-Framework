params[["_number", []]];
[] call ClientModules_Phone_fnc_reset_status;

private _old = player getVariable["phone_active_number", []];
if(count _old != 0) then {
      _old params["_id", "", "", "_balance", ""];
      [_id, _balance] remoteExec ["ServerModules_Phone_fnc_updateBalance", 2];
};

if(count _number == 0) then {
      player setVariable["phone_number", nil, true];
} else {
      _number params["_id", "", "_n", "_balance", "_offer_id"];
      player setVariable["phone_number", _n, true];
};
player setVariable["phone_active_number", _number];
["onSimLoad", _number] call Client_fnc_eventCall;
