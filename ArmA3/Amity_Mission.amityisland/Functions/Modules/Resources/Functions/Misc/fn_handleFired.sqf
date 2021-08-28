params ["_unit","","","","_ammo","",""];
diag_log format["%1 %2", _ammo, _ammo isKindOf "Melee"];
if(_ammo isKindOf "Melee") exitwith {
	private["_cfg","_anim"];
	_cfg = (configFile>>"CfgAmmo">>_ammo>> "Melee");
	_anim = getText(_cfg>>"anim");
	_unit playActionNow _anim;

	if(toLower(currentWeapon _unit) == toLower(getText(missionConfigFile >> "Resources" >> "Items" >> "Pickaxe"))) then {
		[] call clientModules_Resources_fnc_mineMetal;
		[] call clientModules_Resources_fnc_mineSand;
	};
	if(toLower(currentWeapon _unit) == toLower(getText(missionConfigFile >> "Resources" >> "Items" >> "Drill"))) then {
		[] call clientModules_Resources_fnc_drillOil;
	};
	if(toLower(currentWeapon _unit) == toLower(getText(missionConfigFile >> "Resources" >> "Items" >> "Hatchet"))) then {
		[] call clientModules_Resources_fnc_cutTree;
	};
};
if(currentWeapon _unit IN (getArray(missionConfigFile >> "Resources" >> "Fishing" >> "Rods"))) exitWith {
	[] spawn ClientModules_Resources_fnc_fishing;
};
