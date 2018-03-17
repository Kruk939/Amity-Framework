DD_PoliceSirens_KeyUp = {
	params["_display", "_key", "_shift", "_ctrl", "_alt"];

	_handled = false;
	_sirenKeyMAN = DD_SirenKeys select 2;
	_sirenKeySWITCH = DD_SirenKeys select 1;
	_sirenKeyMODE = DD_SirenKeys select 0;
	switch(_key)do{
		case _sirenKeyMAN:
		{
			if(vehicle player == player)exitWith{};
			if(!((driver vehicle player) == player)) exitWith {};

			if(DD_SirenMode == "MAN")then{
				call DD_PoliceSirens_Destroy;
			};

			DD_FreeKey = true;
		};
		case _sirenKeyMODE:
		{
			DD_FreeKey =true;
		};
		case _sirenKeySWITCH:
		{
			DD_FreeKey = true;
		};
	};

	_handled;
};
