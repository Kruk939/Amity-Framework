private _config = (missionConfigFile >> "Robbery" >> "MainBank");
private _class = getText(_config >> "bankClass");
private _bank = nearestObject [player, _class];
_bank;
