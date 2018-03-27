params[["_vehicles", []], ["_faction_vehicles", []]];
disableSerialization;
private _display = findDisplay 2000;
private _type = _display getVariable["type", ""];
lbClear 1500;
lbClear 1501;
lbClear 1502;

_display setVariable["player", _vehicles];
private _combo = [["Player", "player"]];
if(player getVariable["faction_id", -1] != -1) then {
      _combo pushBack ["Company", "company"];
      _display setVariable ["company", _faction_vehicles];
};
_display setVariable["active", (_combo select 0)];

private _textures = getArray(missionConfigFile >> "Showroom" >> "Config" >> "textures");
private _materials = getArray(missionConfigFile >> "Showroom" >> "Config" >> "materials");


{
      private _name = getText(configFile >> "CfgIvoryTextures" >> _x >> "displayName");
      if(_name != "") then {
            private _index = lbAdd[1501, _name];
            lbSetData[1501, _index, _x];
      };
} forEach _textures;

{
      _x params["_var", ""];
      private _name = getText(configFile >> "CfgIvoryMaterials" >> _var >> "displayName");
      if(_name != "") then {
            private _index = lbAdd[1502, _name];
            lbSetData[1502, _index, str(_x)];
      };
} forEach _materials;
lbClear 2100;

{
      _x params["_name", "_variable"];
	private _index = lbAdd[2100, _name];
	lbSetData[2100, _index, _variable];
} foreach _combo;
if(count _combo != 0) then {
      lbSetCurSel [2100, 0];
};
[_type] call ClientModules_Showroom_fnc_camera;
