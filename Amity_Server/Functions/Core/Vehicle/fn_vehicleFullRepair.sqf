params[["_id", -1], ["_player", objNull]];
private _repair = false;
private _price = 5000;
if(!isNull _player) then {
      private _profile_id = player getVariable["profile_id", -1];
      if(_profile_id == -1) exitWith {};
      private _vehicle = [_id] call Server_fnc_getVehicle;
      //_vehicle  params ["_id", "_profile_id", "_faction_id", "_vehicle_id", "_class", "_vin", "_plate", "_status", "_hit", "_damage", "_fuel", "_color", "_material", "_rims", "_windows", "_lights", "_pos", "_inventory", "_access_level"];

      private _banks = [_profile_id] call Server_fnc_bankGetProfile;
      {
            _x params["_id", "_account_number", "_profile_id", "_cash"];
            if(_cash >= _price) exitWith {
                  _repair = true;
                  [_account_number, "SUB", _price] call Server_fnc_handleBank;
            };
      } forEach _banks;
} else {
      _repair = true;
};
if(_repair) then {
      [format["core_garage_repair:%1", _id], 2] call ExternalS_fnc_ExtDBasync;
      if(!isNull _player) then {
            [["You have repaired your car for $%1", _price], true] remoteExec["client_fnc_domsg", _player];
      };
} else {
      if(!isNull _player) then {
            [["You don't have enough money, you neeed $%1 on one of yours bank accounts", _price], true] remoteExec["client_fnc_domsg", _player];
      };
};
