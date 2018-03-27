params[["_type", ""]];
private _display = findDisplay 1000;
if(isNull _display) exitWith {};
disableSerialization;
if(_type == "CHOOSE") exitWith {
      private _index = lbCurSel 1500;
      if(_index > -1) then {
            private _data = call compile (lbData[1500, _index]);
            [_data] call Client_fnc_initProfile;
            amity_var_profile_choose = false;
            closeDialog 0;
      };
};
if(_type == "LB") exitWith {
      private _index = lbCurSel 1500;
      if(_index > -1) then {
            private _data = call compile (lbData[1500, _index]);
            _data params["_profile_id", "_user_id", "_profile_uid", "_first_name", "_last_name", "_female", "_cash", "_items", "_clothes", "_weapons", "_hunger", "_thirst", "_position"];
            private _text = format["ID: %1\nName: %2 %3\nCash: $%4", _profile_id, _first_name, _last_name, _cash];
            ctrlSetText [1000, _text];
      };
};
if(_type == "CREATE") exitWith {
      private _max = getNumber(missionConfigFile >> "Amity" >> "Setup" >> "profiles");
      private _profiles = _display getVariable["profiles", []];
      if((count _profiles) >= _max) then {
            ["You reached max profile count.", true] call Client_fnc_domsg;
      } else {
            amity_var_profile_choose = false;
            [] call Client_fnc_createProfile;
      };
};
if(_type == "EXIT") exitWith {
      if(amity_var_profile_choose) then {
            amity_var_profile_choose = false;
            [player] remoteExec ["Server_fnc_initPlayer", 2];
      };
};
