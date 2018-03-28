params[["_type", ""]];
disableSerialization;

private _fnc_get = {
      params[["_id", -1]];
      private _ret = [];
      private _display = findDisplay 2000;
      if(isNull _display) exitWith { _ret; };
      private _active = _display getVariable["active", ""];
      if(_id == -1 || _active == "") exitWith { _ret ; };
      private _list = _display getVariable[_active, []];
      {
            if(_id == (_x select 0)) exitWith {
                  _ret = _x;
            };
      } forEach _list;
      _ret;
};

if(_type == "exit") exitWith {
      deleteVehicle Showroom_var_vehicle;
      Showroom_var_vehicle = objNull;
      Showroom_var_camera_running = false;
      closeDialog 0;
};

//require display
private _display = findDisplay 2000;
if(isNull _display) exitWith {};
if(_type == "notEnough") exitWith {
      ctrlEnable[1600, true];
      ctrlEnable[1602, true];
};
if(_type == "bought") exitWith {
      if(dialog) then {
            closeDialog 0;
      };
};

if(_type == "combo") exitWith {
      private _index = lbCurSel 2100;
      if(_index == -1) exitWith {};
	private _active = lbData[2100, _index];
      private _list = _display getVariable[_active, []];
      _display setVariable["active", _active];
      lbClear 1500;
      {
            _x params["_id", "", "_class", "", "_name", "", "", "", "", ""];
            if(_name == "") then {
                  _name = getText(configFile >> "CfgVehicles" >> _class >> "displayName");
            };
            private _index = lbAdd[1500, _name];
            lbSetData[1500, _index, str(_id)];
      } forEach _list;
      if(count _list != 0) then {
            lbSetCurSel [1500, 0];
      };
};
if(_type == "vehicle") exitWith {
	private _index = lbCurSel (1500);
      if(_index == -1) exitWith {};
      private _id = parseNumber(lbData[1500, _index]);
      private _vehicle = [_id] call _fnc_get;
      if(count _vehicle == 0) exitWith {};
      private _pos = getArray(missionConfigFile >> "Showroom" >> "Config" >> "position");

      _vehicle params["_id", "", "_class", "", "", "_description", "_price", "_count", "", "_allow_skin"];

      private _price = [_price] call CBA_fnc_formatNumber;
      private _engine = getNumber(configFile >> "CfgVehicles" >> _class >> "enginePower");
      private _seats = getNumber(configFile >> "CfgVehicles" >> _class >> "transportSoldier") + 1;
      ctrlSetText [1000, format["Price: $%1\nEngine: %2HP\nSeats: %3\nIn stock: %4\nDescription:\n%5", _price, _engine, _seats, _count, _description]];
      if(!isNull Showroom_var_vehicle) then { deleteVehicle Showroom_var_vehicle; };

      Showroom_var_vehicle = _class createVehicleLocal _pos;
	Showroom_var_vehicle enableSimulation false;
	Showroom_var_vehicle setPosATL _pos;
	Showroom_var_vehicle allowDamage false;

      if(Showroom_var_vehicle isKindOf "Car") then {
            if(_allow_skin == 1) then {
                  ctrlShow[1501, true];
                  ctrlShow[1502, true];
                  ["color"] call ClientModules_Showroom_fnc_action;
                  ["material"] call ClientModules_Showroom_fnc_action;
            } else {
                  ctrlShow[1501, false];
                  ctrlShow[1502, false];
            };
      };
};

if(_type == "material") exitWith {
      if (Showroom_var_vehicle isKindOf "Car") then {
      	private _index = lbCurSel (1500);
            if(_index == -1) exitWith {};
            private _id = parseNumber(lbData[1500, _index]);
            private _vehicle = [_id] call _fnc_get;
		_vehicle params["_id", "", "_class", "", "", "_description", "_price", "_count", "", "_allow_skin"];
		if(_allow_skin == 0) exitWith {};

            _index = lbCurSel (1502);
            if(_index != -1) then {
      		private _data = call (compile lbData[1502, _index]);
                  _data params["_mat_name", "_mat_price"];
      		private _material = getText(configfile >> "CfgIvoryMaterials" >> _mat_name >> "material");
      		Showroom_var_vehicle setObjectMaterial [0, _material];

                  _price = [_price + _mat_price] call CBA_fnc_formatNumber;
                  private _engine = getNumber(configFile >> "CfgVehicles" >> _class >> "enginePower");
                  private _seats = getNumber(configFile >> "CfgVehicles" >> _class >> "transportSoldier") + 1;
                  ctrlSetText [1000, format["Price: $%1\nEngine: %2HP\nSeats: %3\nIn stock: %4\nDescription:\n%5", _price, _engine, _seats, _count, _description]];
            };
      };
};
if(_type == "color") exitWith {
	if(Showroom_var_vehicle isKindOf "Car") then {
      	private _index = lbCurSel (1500);
            if(_index == -1) exitWith {};
            private _id = parseNumber(lbData[1500, _index]);
            private _vehicle = [_id] call _fnc_get;
		_vehicle params["", "", "", "", "", "", "", "", "", "_allow_skin"];
		if(_allow_skin == 0) exitWith {};

		_index = lbCurSel (1501);
            if(_index != -1) then {
      		private _name = lbData[1501, _index];
      		private _color = getText(configfile >> "CfgIvoryTextures" >> _name >> "texture");
      		Showroom_var_vehicle setObjectTexture [0, _color];
            };
	};
};
if(_type == "buyCompany") exitWith {
      private _faction_id = player getVariable["faction_id", -1];
      if(_faction_id == -1) exitWith {};
      private _index = lbCurSel (1500);
      if(_index == -1) exitWith {};
      private _id = parseNumber(lbData[1500, _index]);
      private _vehicle = [_id] call _fnc_get;
      _vehicle params["_id", "", "", "", "", "", "", "", "", "_allow_skin"];
      private _color = "";
      private _material = "";
      private _rims = "";
      private _windows = 0;
      private _lights = 0;
      if(_allow_skin == 1) then {
            private _index = lbCurSel (1501);
            _color = (lbData[1501, _index]);
            _index = lbCurSel (1502);
            _material = (call compile (lbData[1502, _index])) select 0;
      };
      [_id, _faction_id, [_color, _material, _rims, _windows, _lights], player, "ClientModules_Showroom_fnc_action"] remoteExec ["ServerModules_Showroom_fnc_buy", 2];
      ctrlEnable[1600, false];
      ctrlEnable[1602, false];
};
if(_type == "buyPlayer") exitWith {
      private _index = lbCurSel (1500);
      if(_index == -1) exitWith {};
      private _id = parseNumber(lbData[1500, _index]);
      private _vehicle = [_id] call _fnc_get;
      _vehicle params["_id", "", "", "", "", "", "", "", "", "_allow_skin"];
      private _color = "";
      private _material = "";
      private _rims = "";
      private _windows = 0;
      private _lights = 0;
      if(_allow_skin == 1) then {
            private _index = lbCurSel (1501);
            if(_index != -1) then {
                  _color = (lbData[1501, _index]);
            };
            _index = lbCurSel (1502);
            if(_index != -1) then {
                  _material = (call compile (lbData[1502, _index])) select 0;
            };
      };
      [_id, -1, [_color, _material, _rims, _windows, _lights], player, "ClientModules_Showroom_fnc_action"] remoteExec ["ServerModules_Showroom_fnc_buy", 2];
      ctrlEnable[1600, false];
      ctrlEnable[1602, false];
};
