DD_PoliceSirens_KeyDown = {
	params["_display", "_key", "_shift", "_ctrl", "_alt"];
	_handled = false;
	_sirenArray = getArray(configFile >> "CfgVehicles" >> typeOf(vehicle player) >> "SirenArray");
	if(count(_sirenArray) == 0) exitWith{};

	DD_CurrentSirens = _sirenArray;
	if(isNil "DD_SirenKeys")then{
		DD_SirenKeys = [201, 209, 19];
	};
	_sirenKeyMAN = DD_SirenKeys select 2;
	_sirenKeySWITCH = DD_SirenKeys select 1;
	_sirenKeyMODE = DD_SirenKeys select 0;
	switch(_key)do{
		case _sirenKeyMAN:{
			if(vehicle player == player)exitWith{};
			if(!((driver vehicle player) == player)) exitWith {};
			if(!DD_FreeKey)exitWith{};
			if(_sirenKeyMAN == 61 and _alt)exitWith{};

			DD_FreeKey = false;

			if(DD_SirenMode == "MAN")then{
				call DD_PoliceSirens_Create;
			}else{
				if(!isNull DD_SirenObject)then{
					call DD_PoliceSirens_Destroy;
				}else{
					call DD_PoliceSirens_Create;
				};
			};
			_handled = true;
		};

		case _sirenKeySWITCH:
		{
			if(vehicle player == player)exitWith{};
			if(!((driver vehicle player) == player)) exitWith {};
			if(!DD_FreeKey)exitWith{};
			DD_FreeKey = false;
			call DD_PoliceSirens_Destroy;

			if(!_ctrl)then{
 				if(DD_SirenSelection >= (count(DD_CurrentSirens) - 1))then{
 					DD_SirenSelection = 0;
 					systemChat format["Siren Tone: %1", getText(configFile >> "CfgVehicles" >> (DD_CurrentSirens select DD_SirenSelection) >> "displayName")];
 				}else{
 					DD_SirenSelection = DD_SirenSelection + 1;
 					systemChat format["Siren Tone: %1", getText(configFile >> "CfgVehicles" >> (DD_CurrentSirens select DD_SirenSelection) >> "displayName")];
 				};
			}else{
 				if(DD_SirenSelection > 0)then{
 					DD_SirenSelection = DD_SirenSelection - 1;
 					systemChat format["Siren Tone: %1", getText(configFile >> "CfgVehicles" >> (DD_CurrentSirens select DD_SirenSelection) >> "displayName")];
 				};
			};
			if(DD_SirenMode == "AUTO")then{
				call DD_PoliceSirens_Create;
			};

			_handled = true;
		};
		case _sirenKeyMODE:
		{
			if(vehicle player == player)exitWith{};
			if(!((driver vehicle player) == player)) exitWith {};
			if(!DD_FreeKey)exitWith{};

			DD_FreeKey = false;

			if(DD_SirenMode == "MAN")then{
				DD_SirenMode = "AUTO";
				systemChat "Sirens set to: Automatic";
				call DD_PoliceSirens_Create;
			}else{
				DD_SirenMode = "MAN";
				systemChat "Sirens set to: Manual";
				call DD_PoliceSirens_Destroy;
			};
			_handled = true;
		};

	};

	_handled;
};
