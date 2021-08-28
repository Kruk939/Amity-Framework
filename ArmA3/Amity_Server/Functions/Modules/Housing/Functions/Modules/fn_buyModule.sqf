params[["_house", objNull], ["_module_id", -1], ["_player", objNull]];
if(isNull _house || _module_id == -1) exitWith {};
private _house_id = _house getVariable["house_id", -1];
if(_house_id == -1) exitWith {};

private _module = [_module_id] call ClientModules_Housing_fnc_getModule;
private _faction_id = _house getVariable["house_faction_id", -1];
private _profile_id = _house getVariable["house_profile_id", -1];
if(_faction_id == -1 && _profile_id == -1) exitWith {};
_module params["", "_var", "_class", "", "", "_price"];
private _paid = false;

if(_profile_id != -1) then {
      private _banks = [_profile_id] call Server_fnc_bankGetProfile;
      if((count _banks) == 0) exitWith {};
      {
            _x params["", "_account_number", "", "_cash"];
            if(_cash >= _price) exitWith {
                  [_account_number, "SUB", _price] call Server_fnc_handleBank;
                  _paid = true;
            };
      } forEach _banks;
} else {
      private _faction = [_faction_id] call Server_fnc_factionGet;
      _faction params["", "", "", "", "", "_bank", ""];
      if(_bank >= _price) then {
            _paid = true;
            [_faction_id, "SUB", _price] call Server_fnc_factionBankTransfer;
      };
};
if(_paid) then {
      private _data = [format["housing_insert_module:%1:%2", _house_id, _module_id], 2] call ExternalS_fnc_ExtDBasync;
      if(count _data != 0) then {
            private _assigned_id = (_data select 0) select 0;
            private _obj = _class createVehicle [random(100), random(100), random(100) + 100];
            _obj setVariable["house_module_id", _assigned_id, true];
            _obj setVariable["house_module_variable", _var, true];
            _obj setVariable["house_object", _house, true];
            _obj setVariable["house_module_access", -1, true];
            _obj setVariable["house_module_data", _data, true];
            [_obj] remoteExecCall["Client_fnc_addAttachable", _player];
            uiSleep 0.5;
            [_obj] remoteExecCall["Client_fnc_attachObject", _player];
            [["STR_HOUSING_DIALOG_MANAGE_MODULE_BOUGHT", _price], true] remoteExec["Client_fnc_domsg", _player];
      };
} else {
      ["STR_HOUSING_DIALOG_MANAGE_MODULE_NOT_ENOUGH_MONEY", true] remoteExec["Client_fnc_domsg", _player];
};
