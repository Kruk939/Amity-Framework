params[["_number", ""], ["_message", ""]];
private _own = player getVariable["phone_number", ""];
if(_number == "" || _own == "") exitWith { false; };
[_message, _own, _number, player] remoteExec["ServerModules_Phone_fnc_insertMessage", 2];
