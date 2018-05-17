params[["_profile", []], ["_vehicles", []], ["_wanted", []], ["_licenses", []], ["_sentences", []], ["_tickets", []], ["_houses", 0]];
disableSerialization;
if(!dialog) exitWith {};
private _display = findDisplay 15001;
if(isNull _display) exitWith { closeDialog 0; };
if(count _profile == 0) exitWith {}; //not found
_display setVariable["profile", _profile];
_display setVariable["vehicles", _vehicles];
_display setVariable["wanted", _wanted];
_display setVariable["licenses", _licenses];
_display setVariable["sentences", _sentences];
_display setVariable["tickets", _tickets];
[(_display getVariable["profile_id", -1]), "ClientModules_Computer_fnc_computer_check_profile_open"] call ClientModules_Computer_fnc_addLast;

_profile params["_id", "", "_profile_uid", "_first_name", "_last_name"];
ctrlSetText[1001, format["%1 %2", _first_name, _last_name]];
ctrlSetText[1002, _profile_uid];
ctrlSetText[1006, str(_houses)];


//vehicles
ctrlSetText[1005, str(count _vehicles)];
{
      _x params["_id", "", "", "", "_class", "", "_plate"];
      private _index = lbAdd[2103, format["[%1] %2", _plate,  getText(configFile >> "CfgVehicles" >> _class >> "displayName")]];
      lbSetData[2103, _index, str(_id)];
} forEach _vehicles;


//licenses
private _ids = (["view"] call ClientModules_Licenses_fnc_getAvialableLicenses) + (["revoke"] call ClientModules_Licenses_fnc_getAvialableLicenses) + (["give"] call ClientModules_Licenses_fnc_getAvialableLicenses);
{
      _x params["_id", "_license_id"];
      if(_license_id IN _ids) then {
            private _name = ([_license_id] call ClientModules_Licenses_fnc_get) select 2;
            private _index = lbAdd[2102, _name];
            lbSetData[2102, _index, str(_id)];
      };
} forEach _licenses;
if(lbSize 2102 != 0) then { lbSetCurSel[2102, 0]; };

//tickets
ctrlSetText[1007, str(count _tickets)];
private _ticketPoints = 0;
{
      _x params["_id", "", "", "_amount", "_points", "_reason", "_prest"];
      private _name = _reason;
      if(typeName _prest != "OBJECT") then {
            if(!isNil "ClientModules_Ticket_fnc_getPrest") then {
                  private _conf = [_prest, "id"] call ClientModules_Ticket_fnc_getPrest;
                  if(!isNull _conf) then {
                        _name = getText(_conf >> "name") call BIS_fnc_localize;
                  };
            };
      };
      private _index = lbAdd[2100, _name];
      lbSetData[2100, _index, str(_id)];
} forEach _tickets;
ctrlSetText[1004, str(_ticketPoints)];

//cases/wanted
private _wantedLevel = -1;
ctrlSetText[1009, str(count _wanted)];
{
      _x params["_id", "", "", "_wanted_id", "_reason", "_closed_by"];
      private _value = 1000 - _wanted_id;
      if(typeName _closed_by == "OBJECT" && _wanted_id > _wantedLevel) then { _wantedLevel = _wanted_id; _value = _value - 100; };
      private _index = lbAdd[2101, format["[%1] %2", _id, _reason]];
      lbSetData[2101, _index, str(_id)];
      lbSetValue[2101, _index, _value];
} forEach _wanted;
lbSortByValue 2101;
private _wantedConf = [_wantedLevel, "id"] call ClientModules_Computer_fnc_getWantedConfig;
if(!isNull _wantedConf) then {
      private _wantedControl = _display displayCtrl 1003;
      ctrlSetText[1003, getText(_wantedConf >> "name") call BIS_fnc_localize];
      _wantedControl ctrlSetBackgroundColor getArray(_wantedConf >> "color");
};

//sentences
private _escaped = false;
private _in_jail = false;
ctrlSetText[1011, str(count _sentences)];
{
      _x params["_id", "_active", "_sentence", "_time_left", "_security", "_reason"];
      private _value = 1000 - _security;
      if(_active == 1) then { _in_jail = true; };
      if(_time_left > 0) then { _value = _value - 100; if(_active == 0) then { _escaped = true; }; };
      private _index = lbAdd[1500, format["[%1] %2 - %3", _id, _reason, _sentence]];
      lbSetData[1500, _index, str(_id)];
      lbSetValue[1500, _index, _value];
} forEach _sentences;
lbSortByValue 1500;

private _status = _display displayCtrl 1012;
private _text = localize "STR_COMPUTER_NO_IN_JAIL";
_status ctrlSetBackgroundColor [0,0,0,0.2];

if(_escaped) then {
      _status ctrlSetBackgroundColor [1,0,0,0.4];
      _text = localize "STR_COMPUTER_ESCAPED";
} else {
      if(_in_jail) then {
            _status ctrlSetBackgroundColor [0,1,0,0.4];
            _text = localize "STR_COMPUTER_IN_JAIL";
      };
};
ctrlSetText[1012, _text];
