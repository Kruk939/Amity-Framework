private _count = count computer_var_lastDialog;
if(_count <= 1) exitWith {};
private _last = computer_var_lastDialog select (_count - computer_var_lastIndex - 2);
_last params["_params", "_function"];
computer_var_lastOpened = true;
_params call (call compile _function);
