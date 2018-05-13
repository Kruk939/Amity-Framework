params[["_plant", objNull]];
if(isNull _plant) exitWith {};

private _config = [typeOf _plant, "plant"] call ClientModules_Growing_fnc_plant_getConfig;
if(isNull _config) exitWith {}; //something went wrong

private _function = getText(_config >> "Growing" >> "Functions" >> "harvest");
if(_function != "" && !isNil _function) exitWith { _this call (call compile _function); };

if(!(_plant getVariable["ready", false]) || _plant getVariable["growing", true]) exitWith { ["STR_Growing_PLANT_STILL_GROWING", true] call Client_fnc_domsg; };
private _quality = _plant getVariable["quality", -1];
if(_quality < 0) exitWith { deleteVehicle _plant; }; //something went wrong

private _harvest = getArray(_config >> "Growing" >> "harvest");
if(count _harvest == 0) exitWith { deleteVehicle _plant; }; //nothing to do

private _q = [];
{
      _x params["_qu"];
      if(_quality <= _qu) then {
            _q = _x;
      };
} forEach _harvest;
if(count _q == 0) exitWith { deleteVehicle _plant; }; //something went wrong
_q params["_qu", "_class", ["_amount", 1]];

private _i = 0;
for [{}, {_i < _amount}, { _i = _i + 1; }] do {
    [player, _class, true] call CBA_fnc_addItem;
};
deleteVehicle _plant;
