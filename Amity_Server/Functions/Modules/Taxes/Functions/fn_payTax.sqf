params[["_tax_id", -1], ["_amount", 0], ["_included", false]];
if(_tax_id == -1 || _amount <= 0) exitWith {};
private _tax = [_tax_id] call ClientModules_Taxes_fnc_get;
