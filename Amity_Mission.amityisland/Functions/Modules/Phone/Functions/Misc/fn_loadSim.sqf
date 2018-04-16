params[["_number", []]];
if(count _number == 0) then {
      player setVariable["phone_number", nil, true];
} else {
      _number params["_id", "", "_n", "_balance", "_offer_id"];
      player setVariable["phone_number", _n, true];
};
player setVariable["phone_active_number", _number];
["onSimLoad", _number] call Client_fnc_eventCall;
