DD_PoliceSirens_Create = {
	if(isNull DD_SirenObject)then{
		if(!isNull (vehicle player getVariable["DD_SirenSource", objNull]))then{
			deleteVehicle (vehicle player getVariable "DD_SirenSource");
			vehicle player setVariable["DD_SirenSource", objNull, true];
			}else{
				DD_SirenObject = createSoundSource[(DD_CurrentSirens select DD_SirenSelection), position player, [], 0];
				DD_SirenObject attachTo[vehicle player, [0,0,0]];
				vehicle player setvariable["DD_SirenSource", DD_SirenObject, true];
			};
		};
	};
