params[["_id", -1], ["_faction_id", -1], ["_data", []], ["_player", objNull], ["_function", ""]];
if(_id == -1) exitWith {};
private _vehicle = [_id] call ServerModules_Showroom_fnc_getVehicle;
if((count _vehicle) == 0) exitWith {}; //no vehicle found
_vehicle params["_id", "_vehicle_id", "_class", "", "_name", "", "_price", "", "_f_id", "_allow_skin"];
if(_name == "") then { _name =  getText(configFile >> "CfgVehicles" >> _class >> "displayName"); };
if(_faction_id == -1) then {
      if(typeName _f_id != "OBJECT") then {
            _faction_id = _f_id;
      } ;
};

if(_faction_id == -1) then {
      //buy for player
      if(!isNull _player) then {
            private _profile_id = _player getVariable ["profile_id", -1];
            if(_profile_id == -1) exitWith {};
            private _banks = [_profile_id] call Server_fnc_bankGetProfile;
            if((count _banks) == 0) exitWith {};
            private _paid = false;
            {
                  _x params["", "_account_number", "", "_cash"];
                  if(_cash >= _price) exitWith {
                        [_account_number, "SUB", _price] call Server_fnc_handleBank;
                        _paid = true;
                  };
            } forEach _banks;
            if(_paid) then {
                  _data params[["_color", ""], ["_material", ""], ["_rims", ""], ["_windows", 0], ["_lights", 0]];
                  if(_allow_skin == 0) then {
                        _color = "";
                        _material = "";
                        _rims = "";
                  };
                  [_player, [_vehicle_id, _color, _material, _rims, _windows, _lights]] call Server_fnc_insertGarage;
                  [_id] call ServerModules_Showroom_fnc_removeCount;
                  [["You bought a %1 for $%2", _name, _price], true] remoteExecCall ["Client_fnc_domsg", _player];
                  if(_function != "") then {
                        ["bought"] remoteExecCall[_function, _player];
                  };
                  private _faction = getNumber(missionConfigFile >> "Showroom" >> "Config" >> "Payment" >> "faction");
                  if(_faction > 0) then {
                        [_faction, "ADD", _price] call Server_fnc_factionBankTransfer;
                  };
            } else {
                  [["You don't have enough money to buy a %1", _name], true] remoteExecCall ["Client_fnc_domsg", _player];
                  if(_function != "") then {
                        ["notEnough"] remoteExecCall[_function, _player];
                  };
            };
      };
} else {
      //buy for faction
      if(_player getVariable["faction_id", -1] != _faction_id) exitWith {};
      private _faction = [_faction_id] call Server_fnc_factionGet;
      _faction params["", "", "", "", "", "_bank", ""];
      if(_bank <= _price) exitWith {
            [["You don't have enough money to buy a %1 for your faction", _name], true] remoteExecCall ["Client_fnc_domsg", _player];
            if(_function != "") then {
                  ["notEnough"] remoteExecCall[_function, _player];
            };
      };
      [_faction_id, "SUB", _price] call Server_fnc_factionBankTransfer;
      _data params[["_color", ""], ["_material", ""], ["_rims", ""], ["_windows", 0], ["_lights", 0]];
      if(_allow_skin == 0) then {
            _color = "";
            _material = "";
            _rims = "";
      };
      [_player, [_vehicle_id, _color, _material, _rims, _windows, _lights], _faction_id] call Server_fnc_insertGarage;
      [_id] call ServerModules_Showroom_fnc_removeCount;
      [["You bought a %1 for $%2 for your faction", _name, _price], true] remoteExecCall ["Client_fnc_domsg", _player];
      private _faction = getNumber(missionConfigFile >> "Showroom" >> "Config" >> "Payment" >> "faction");
      if(_faction > 0) then {
            [_faction, "ADD", _price] call Server_fnc_factionBankTransfer;
      };
      if(_function != "") then {
            ["bought"] remoteExecCall[_function, _player];
      };
};
