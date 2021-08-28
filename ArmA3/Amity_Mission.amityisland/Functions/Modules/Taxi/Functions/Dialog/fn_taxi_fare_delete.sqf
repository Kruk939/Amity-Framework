disableSerialization;
private _layer = getNumber(missionConfigFile >> "Taxi" >> "Config" >> "layer");
_layer cutText ["", "PLAIN"];
uiNamespace setVariable['taxi_var_display', nil];
