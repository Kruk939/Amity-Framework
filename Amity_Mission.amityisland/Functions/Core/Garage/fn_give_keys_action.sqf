params[["_type", ""]];
disableSerialization;
if(!dialog) exitWith {};
private _display = findDisplay 1006;
if(isNull _display) exitWith { closeDialog 0; };
private _fnc_find_veh = {
      params[["_id", -1]];
      private _ret = objNull;
      if(_id == -1) exitWith { _ret; };
      {
            if((_x getVariable["id", -1] == _id)) exitWith { _ret = _x; };
      } forEach amity_var_vehicles;
      _ret;
};
if(_type == "") exitWith {};

if(_type == "LB") exitWith {
      private _index = lbCurSel 2100;
      if(_index == -1) exitWith {};
      private _id = parseNumber(lbData[2100, _index]);
      if(_id == -1) exitWith {};
      private _veh = [_id] call _fnc_find_veh;
      if(isNull _veh) exitWith {};
      private _class =  typeOf _veh;
      private _name = getText(configFile >> "CfgVehicles" >> _class >> "displayName");
      private _engine = getNumber(configFile >> "CfgVehicles" >> _class >> "enginePower");
      private _seats = getNumber(configFile >> "CfgVehicles" >> _class >> "transportSoldier") + 1;
      private _plate = _veh getVariable["plate", ""];
      if(_plate != "") then { _plate = format["[%1]", _plate]};
      private _text = format[localize "STR_CORE_AMITY_KEYS_INFO_TEXT", _id, _plate, _name, _seats, _engine];
      ctrlSetText[1001, _text];
      [["STR_CORE_AMITY_KEYS_GIVEN", _name], true] call Client_fnc_domsg;

};
if(_type == "GIVE") exitWith {
      private _target = _display getVariable["target", objNull];
      if(isNull _target) exitWith {};
      private _index = lbCurSel 2100;
      if(_index == -1) exitWith {};
      private _id = parseNumber(lbData[2100, _index]);
      if(_id == -1) exitWith {};
      private _veh = [_id] call _fnc_find_veh;
      if(isNull _veh) exitWith {};
      [_veh, player] remoteExecCall ["Client_fnc_receive_key", _target];
};
