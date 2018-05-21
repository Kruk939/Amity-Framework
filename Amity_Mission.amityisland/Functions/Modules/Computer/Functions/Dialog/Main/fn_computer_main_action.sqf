disableSerialization;
params[["_type", ""]];
if(_type == "") exitWith {};
if(!dialog) exitWith {};
private _display = findDisplay 15000;
if(isNull _display) exitWith { closeDialog 0; };
private _wantedPersons = _display setVariable["wantedPersons", []];
private _wantedVehicles = _display setVariable["wantedVehicles", []];
private _messages = _display setVariable["messages", []];

if(_type == "SEND") exitWith {
      private _messageAccess = getNumber(missionConfigFile >> "Computer" >> "Messages" >> "access");
      if(player getVariable["module_computer", -1] < _messageAccess) exitWith {}; //not allowed
      private _message = ctrlText 1401;
      private _length = getNumber(missionConfigFile >> "Computer" >> "Messages" >> "length");
      if(count _message > _length) then { _message = format["%1...", ([_message, 0, _length - 1] call BIS_fnc_trimString)]; };
      [player, player getVariable["faction_id", -1], _message] remoteExec["ServerModules_Computer_fnc_addMessage", 2];
};
if(_type == "WANTED_PERSON_CHECK") exitWith {
      private _index = lbCurSel 1500;
      if(_index == -1) exitWith {}; //not selected
      private _id = parseNumber(lbData[1500, _index]);
      [_id] call ClientModules_Computer_fnc_computer_view_case_profile_open;
};
if(_type == "WANTED_VEHICLE_ADD") exitWith {

};
if(_type == "WANTED_VEHICLE_CHECK") exitWith {

};
if(_type == "QUICK_ADD") exitWith {
      private _index = lbCurSel 2100;
      if(_index == -1) exitWith {}; //not selected
      private _id = parseNumber(lbData[2100, _index]);
      [_id] call ClientModules_Computer_fnc_computer_add_profile_open;

};
if(_type == "QUICK_CHECK") exitWith {
      private _index = lbCurSel 2100;
      if(_index == -1) exitWith {}; //not selected
      private _id = parseNumber(lbData[2100, _index]);
      [_id] call ClientModules_Computer_fnc_computer_check_profile_open;
};
if(_type == "SEARCH_NAME") exitWith {

};
if(_type == "SEARCH_ID") exitWith {

};
if(_type == "SEARCH_VIN") exitWith {

};
if(_type == "SEARCH_PLATE") exitWith {

};
