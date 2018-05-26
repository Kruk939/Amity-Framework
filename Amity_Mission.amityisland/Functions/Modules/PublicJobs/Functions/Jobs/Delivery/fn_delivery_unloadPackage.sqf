params[["_vehicle", objNull], ["_index", 0]];
if(player distance _vehicle > 10) exitWith {}; //to far away
private _container = _vehicle getVariable["container", []];
if((count _container) == 0 || _index < 0 || (count _container) < _index) exitWith {};
private _cargo = _container deleteAt _index;
_vehicle getVariable["container", _container];
_cargo params["_shop", "_target", "_amount", "_locked", "_class", "_content"];
private _holder = _class createVehicle (getPos player);
if(_locked) then { _holder setVariable["locked", _locked, true]; };
_holder setVariable["target", _target];
_holder setVariable["shop", _shop];
_holder setVariable["amount", _amount];
[_holder, _content] call Client_fnc_loadCargo;
public_jobs_delivery_var_packages pushBack _holder;
