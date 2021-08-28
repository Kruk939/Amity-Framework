params[["_furniture", objNull]];
if(isNull _furniture) exitWith { false; };
private _id = _furniture getVariable["house_furniture_id", -1];
if(_id == -1) exitWith { false; };
private _ret = false;



_ret;
