params[["_id", -1]];

if(_id == -1) exitWith { player setVariable["phone_dispatch_id", nil, true]; };
player setVariable["phone_dispatch_id", _id, true];
