disableSerialization;
private _layer = getNumber(missionConfigFile >> "Taxi" >> "Config" >> "layer");
_layer cutRSC ["taxi_fare", "PLAIN", -1];
