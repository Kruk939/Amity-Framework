disableSerialization;
if(dialog) then { closeDialog 0; };
private _ok = createDialog "phone_services";
if(!_ok) exitWith {};
[] call ClientModules_Phone_fnc_setBackground;
private _display = findDisplay 1103;
private _jobs = (getArray(missionConfigFile >> "RPF_phoneModule" >> "Services"));
{
      private _temp = [];
      _x params["_name", "_var_name", "_equals"];
      {
            if(_x getVariable[_var_name, ""] == _equals) then {
                  _temp pushBack [_x, _x getVariable["phone_number", ""]];
            };
      } forEach playableUnits;
      private _index = lbAdd [1500, _name];
      lbSetData[1500, _index, str(_temp)];
} foreach _jobs;
if((count _jobs) != 0) then {
            lbSetCurSel [1500, 0];
};
