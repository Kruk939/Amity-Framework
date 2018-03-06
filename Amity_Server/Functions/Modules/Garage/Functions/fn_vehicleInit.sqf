params[["_vehicle", objNull], ["_data", []]];
if(isNull _vehicle) exitWith {};
if((count _data) == 0) exitWith {};

_data params ["_id", "_profile_id", "_faction_id", "_vehicle_id", "_class", "_vin", "_plate", "_status", "_hit", "_damage", "_fuel", "_color", "_material", "_rims", "_windows", "_lights", "_pos", "_inventory", "_access_level"];
private _type = switch(true) do {
      case (((toLower _class) find "adm") > -1): {"jonzie"};
      case (((toLower _class) find "jonzie_") > -1): {"jonzie"};
      case (((toLower _class) find "pop_") > -1): {"jonzie"};
      case (((toLower _class) find "amity_fordfocus_") > -1): {"jonzie"};
      case (((toLower _class) find "pke_") > -1): {"jonzie"};
      case (((toLower _class) find "red_") > -1): {"jonzie"};
      case (((toLower _class) find "vvv_") > -1): {"ivory"};
      case (((toLower _class) find "ivory_") > -1): {"ivory"};
      case (((toLower _class) find "adilac_") > -1): {"ivory"};
      case (((toLower _class) find "red_") > -1): {"ivory"};
      default {""};
};

[_vehicle, _plate, _type] call ServerModules_Garage_fnc_numberPlate;

if(_color != "") then {
      private _texture  = getText(configfile >> "CfgIvoryTextures" >> _color >> "texture");
      _vehicle setObjectTextureGlobal [0, _texture];
};
if(_material != "") then {
      private _texture  = getText(configfile >> "CfgIvoryMaterials" >> _material >> "texture");
      _vehicle setObjectMaterialGlobal [0, _texture];
};
if(_type == "ivory") then {
      if(_rims == "") then {
            private _texture =  getText(configfile >> "CfgIvoryTextures" >> _rims >> "texture");
            _vehicle setObjectTextureGlobal[1, _texture];
      };
      _windows = _windows * 0.1;
      _lights = _lights * 0.1;
      if(_lights > 0.9) then { _lights = 0.9 };
      if(_windows > 0.9) then { _windows = 0.9 };
      if(_windows < 0) then { _windows = 0 };
      if(_lights < 0) then { _lights = 0 };
      _vehicle setObjectTextureGlobal [2,"#(argb,8,8,3)color(0,0,0," + (str _windows) + ",ca)"];
      _vehicle setObjectTextureGlobal [3,"#(argb,8,8,3)color(0,0,0," + (str _lights) + ",ca)"];
      _vehicle setVariable["windowTint", _windows, true];
};
if(_damage < 0.8) then {
      _vehicle setDamage _damage;
      [_vehicle, _hit] call Client_fnc_vehicleHitLoad;
} else {
      //not able to spawn
};
