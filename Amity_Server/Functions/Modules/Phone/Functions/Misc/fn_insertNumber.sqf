params[["_profile_id", "-1"], ["_offer_id", -1]];
if(_profile_id == -1) exitWith { []; };
if(_offer_id == -1) then {
      _offer_id = getNumber(missionConfigFile >> "Phone" >> "Default" >> "offer");
};
private _offer = [_offer_id] call ClientModules_Phone_fnc_getOffer;
if(count _offer == 0) exitWith { []; };
private _balance = getNumber(missionConfigFile >> "Phone" >> "Default" >> "balance");
private _prefix = getText(missionConfigFile >> "Phone" >> "Default" >> "prefix");

_offer params["", "_faction_id"];
if(typeName _faction_id != "OBJECT") then {
      //get prefix
};
private _number = "";
private _exists = true;
while{_exists} do {
      _number = format["%1%2", _prefix, [6, "0123456789"] call Client_fnc_generateString];
      _exists = (([format["phone_exist_number:%1", _number], 2] call ExternalS_fnc_ExtDBasync) select 0) select 0;
};
private _ret = [format["phone_insert_number:%1:%2:%3:%4", _profile_id, _number, _offer_id, _balance], 2] call ExternalS_fnc_ExtDBasync;
_ret;
