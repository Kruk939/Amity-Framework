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
[_holder] call Client_fnc_addAttachable;
[_holder] call Client_fnc_attachObject;
[_holder, _content] call Client_fnc_loadCargo;
public_jobs_delivery_var_packages pushBack _holder;

private _condition = compile (format["_target getVariable[""shop"", -1] != -1 && player distance %1 < 10", getPos _target]);
private _actions = [
            [
                  ["PUBLICJOBS_DELIVER",  "Deliver Package", "", {[_target] call ClientModules_PublicJobs_fnc_delivery_deliverPackage}, _condition, {}, "", "", 5],
                  ["object",[_holder, 0, ["ARP_OBJECT_MENU"]]]
            ],
            [
                  ["PUBLICJOBS_DELIVER_LOAD",  "Load Package", "", {[_target] call ClientModules_PublicJobs_fnc_delivery_loadPackage}, {_target getVariable["shop", -1] != -1 && public_jobs_var_vehicle distance player < 10}, {}, "", "", 5],
                  ["object",[_holder, 0, ["ARP_OBJECT_MENU"]]]
            ]

];
_actions call Client_fnc_addAction;
