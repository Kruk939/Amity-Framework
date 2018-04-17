params[["_data", []], ["_numbers", []], ["_contacts", []]];
phone_var_data = _data;
phone_var_numbers = _numbers;
phone_var_contacts = _contacts;

if(count _numbers != 0) then {
      [_numbers select 0] call ClientModules_Phone_fnc_loadSim;
};
