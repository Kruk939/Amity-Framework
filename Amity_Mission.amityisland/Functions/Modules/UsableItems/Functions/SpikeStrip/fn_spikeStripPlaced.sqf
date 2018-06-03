params[["_obj", objNull]];
if(isNull _obj) exitWith {};
private _maxTime = time + 300;
while{!isNull _obj && time < _maxTime} do {
      private _nearVehicles = nearestObjects[getPos _obj, ["Car"], 7];
      if(count _nearVehicles != 0) exitWith {
            private _vehicle = _nearVehicles select 0;
            [_vehicle] remoteExec["ClientModules_UsableItems_fnc_spikeStripEffect", _vehicle];
      };
      uiSleep 0.5;
};
deletevehicle _obj;
