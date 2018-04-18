disableSerialization;
params[["_target", objNull]];
if(isNull _target) exitWith {};
if(dialog) then { closedialog 0; };
private _ok = createDialog "paintjob";
if(!_ok) exitWith {};
private _display = findDisplay 564332;
if(isNull _display) exitWith {};
mechanic_var_selected_car = _target;
mechanic_var_previous_texture = (getObjectTextures _target) select 0;
mechanic_var_previous_material = (getObjectMaterials _target) select 0;
private _textures = getArray(missionConfigFile >> "Showroom" >> "Config" >> "textures");
private _materials = getArray(missionConfigFile >> "Showroom" >> "Config" >> "materials");

lbClear 1500;
{
	private _displayName = getText(configFile >> "CfgIvoryTextures" >> _x >> "displayName");
	if(_displayName != "") then {
		private _index =  lbAdd [1500, _displayName];
            lbSetData [1500, _index, _x];
	};
} foreach _textures;

lbClear 1501;
{
      _x params["_material", "_price"];
	private _displayName = getText(configFile >> "CfgIvoryMaterials" >> _material >> "displayName");
	private _index = lbAdd [1501, _displayName];
	lbSetdata [1501, _index, str(_x)];
} foreach _materials;
