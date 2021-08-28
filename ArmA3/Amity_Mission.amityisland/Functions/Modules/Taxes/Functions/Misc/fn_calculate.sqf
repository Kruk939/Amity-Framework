params[["_id", -1], ["_price", 0]];
private _ret = [];
if(_price < 0 || _id <= 0) exitWith { _ret; };
private _tax = [_id] call ClientModules_Taxes_fnc_get;
_tax params["", "_per"];
private _t = _price * _per / 100;
_ret = [_price, _t, _price + _t];
_ret;
