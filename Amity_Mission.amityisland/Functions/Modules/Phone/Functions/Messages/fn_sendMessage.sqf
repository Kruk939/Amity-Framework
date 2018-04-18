params[["_number", ""], ["_message", ""]];
private _own = player getVariable["phone_number", ""];
if(_number == "" || _own == "") exitWith { false; };
private _number = player setVariable["phone_active_number", _number];
_number params["", "", "", "_balance", "_offer_id"];
private _offer = [_offer_id] call ClientModules_Phone_fnc_getOffer;
private _sms_price = _offer select 2;
if(_balance >= _sms_price) then {
      [_sms_price] call ClientModules_Phone_fnc_handleBalance;
      [_message, _own, _number, player] remoteExec["ServerModules_Phone_fnc_insertMessage", 2];
};
