private _facilities = getArray(missionConfigFile >> "Medical" >> "Config" >> "facilities");

private _hospitals = nearestObjects [[0,0,0], _facilities, 35500];
{
	_x setVariable["ace_medical_isMedicalFacility", true, true];
} foreach _hospitals;

private _onSpawn = {
      params[["_vehicle", objNull]];
      private _vehicles = getArray(missionConfigFile >> "Medical" >> "Config" >> "vehicles");
      if((typeName _vehicle) IN _vehicles) then {
            _vehicle setVariable["Ace_medical_medicClass", 1, true];
      };
};
["onVehicleSpawn", _onSpawn] call Client_fnc_eventAdd;
