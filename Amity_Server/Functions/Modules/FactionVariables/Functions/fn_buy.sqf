params[["_module_id", -1], ["_faction_id", -1], ["_player", objNull], ["_function", ""]];
if(_module_id == -1 || _faction_id == -1) exitWith {};
private _module = [_module_id] call ServerModules_FactionVariables_fnc_getModule;
_module params["_id", "_name", "_price", "_variable"];
private _faction = [_faction_id] call Server_fnc_factionGet;
_faction params["", "", "", "", "", "_bank", ""];
if(_bank < _price) exitWith {

};
[_faction_id, "SUB", _price] call Server_fnc_factionBankTransfer;
private _query = format["factionVariables_insert_faction_module:%1:%2", _faction_id, _module_id];
[0, _query] call ExternalS_fnc_ExtDBquery;
