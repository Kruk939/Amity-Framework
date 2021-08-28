params[["_amount", 0]];
private _cash = player getVariable["cash", 0];
private _ret = false;
if(_amount <= _cash) then { _ret = true; };
_ret;
