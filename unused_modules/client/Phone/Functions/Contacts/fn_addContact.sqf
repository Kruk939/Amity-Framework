params[["_name", ""], ["_number", ""]];
if(_name == "" || _number == "") exitWith { false };
private _exists_name = [_name] call ClientModules_Phone_fnc_findContact;
private _exists_number = [_number] call ClientModules_Phone_fnc_findContact;
if(count _exists_name != 0) then {
      _exists_name params["_id", "", "_n", ""];
      [_id, _n, _number] call ClientModules_Phone_fnc_updateContact;
} else {
      if(count _exists_number != 0) then {
            _exists_number params["_id", "", "", "_n"];
            [_id, _name, _n] call ClientModules_Phone_fnc_updateContact;
      } else {
            private _profile_id = player getVariable["profile_id", -1];
            [_profile_id, _name, _number, player, "ClientModules_Phone_fnc_receiveContact"] remoteExecCall["ServerModules_Phone_fnc_addContact", 2];
            phone_var_contacts pushBack[-1, _profile_id, _name, _number];
      };
};
true;
