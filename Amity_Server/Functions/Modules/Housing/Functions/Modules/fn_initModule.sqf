params[["_house", objNull], ["_module", []]];
if((count _module) == 0 || isNull _house) exitWith {};
_module params["_mod_id", "_m_id", "_position", "_dir", "_access"];
if(typeName _access == "OBJECT") then { _access = -1; };
private _type = [_m_id] call ServerModules_Housing_fnc_getModule;
if((count _type) != 0) then {
      _type params["", "_var", "_class"];
      if(_class == "") exitWith {};
      private _obj = _class createVehicle [random(100), random(100), random(100) + 100];
      _obj setPosATL _position;
      _obj setDir _dir;
      _obj setVariable["house_module_id", _mod_id, true];
      _obj setVariable["house_module_variable", _var, true];
      _obj setVariable["house_object", _house, true];
      _obj setVariable["house_module_access", _access, true];
};
