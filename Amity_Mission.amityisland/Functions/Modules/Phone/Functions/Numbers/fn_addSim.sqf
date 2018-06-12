params[["_offer_id", -1]];
if(_offer_id == -1) then {
      _offer_id = getNumber(missionConfigFile >> "Phone" >> "Default" >> "offer");
};
private _offer = [_offer_id] call ClientModules_Phone_fnc_getOffer;
if(count _offer == 0) exitWith { false; };
private _profile_id = player getVariable["profile_id", -1];
private _limit = getNumber(missionConfigFile >> "Phone" >> "Limits" >> "numbers");
if((count phone_var_numbers) > _limit) exitWith { false; };

[_profile_id, _offer_id, player, "ClientModules_Phone_fnc_receiveNumber"] remoteExecCall ["ServerModules_Phone_fnc_insertNumber", 2];
true;
