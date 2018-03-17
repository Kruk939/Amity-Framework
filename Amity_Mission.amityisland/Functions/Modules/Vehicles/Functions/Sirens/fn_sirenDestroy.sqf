DD_PoliceSirens_Destroy = {
	if(!isNull DD_SirenObject)then{
		deleteVehicle DD_SirenObject;
		DD_SirenObject = objNull;
		if(!isNull (vehicle player getVariable["DD_SirenSource", objNull]))then{
			deleteVehicle (vehicle player getVariable "DD_SirenSource");
			vehicle player setVariable["DD_SirenSource", objNull, true];
		};
	};
};
