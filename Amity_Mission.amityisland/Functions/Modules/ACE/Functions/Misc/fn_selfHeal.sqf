private _price = getNumber(missionConfigFile >> "Medical" >> "Config" >> "Price" >> "fullHeal");
if(!([_price] call Client_fnc_checkMoney)) exitWith { ["You don't have enough money to heal yourself!", true] call Client_fnc_domsg; };

[["You have paid $%1 for service", _price], true] call Client_fnc_domsg;
[player, player] call ClientModules_ACE_fnc_fullHeal;
