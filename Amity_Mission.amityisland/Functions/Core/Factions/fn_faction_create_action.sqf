disableSerialization;
if(!dialog) exitWith {};
private _display = findDisplay 1030;
if(isNull _display) exitWith {};
params[["_type", ""]];
private _index = lbCurSel 2100;
if(_index == -1) exitWith {};
private _data = call compile (lbData[2100, _index]);

private _fnc = {
      params[["_string", ""]];
      private _txt = _string splitString ":";
      _string = _txt joinString "";
      _string;
};
if(typeName _type == "BOOL") then {
      if(_type) then {
            _type = "CREATED";
      } else {
            _type = "EXISTS";
      };
};
if(_type == "LB") exitWith {
      _data params["", "", "_price"];
      ctrlSetText[1000, format["$%1", _price]];
};
if(_type == "CREATE") exitWith {
      _data params["", "_type", ""];
      private _short = [ctrlText 1400] call _fnc;
      private _long = [ctrlText 1401] call _fnc;
      [[_type, _short, _long], player, "Client_fnc_faction_create_action"] remoteExecCall["Server_fnc_factionCreate", 2];
      ctrlEnable[1601, false];
};
if(_type == "EXISTS") exitWith {
      ctrlEnable[1601, true];
};
if(_type == "CREATED") exitWith {
      closeDialog 0;
};
