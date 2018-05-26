params[["_holder", objNull]];
if(isNull public_jobs_var_vehicle) exitWith {}; //no job vehicle
if(public_jobs_var_vehicle distance player > 10) exitWith {};//to far away from vehicle
private _shop = _holder getVariable["shop_id", -1];
private _target = _holder getVariable["target", objNull];
private _locked = _holder getVariable["locked", false];
private _amount = _holder getVariable["amount", -1];
if(_shop == -1 || isNull _target) exitWith {};
private _content = [_holder] call Client_fnc_getCargo;

//amount
if(_amount == -1) then {
      private _count = 0;
      {
            _x params["_i", ""];
            _count = _count + (count _i);
      } forEach _content;
      _amount = _count;
};

private _container = public_jobs_var_vehicle getVariable["container", []];
_container pushBack [_shop, _target, _amount, _locked, typeOf _holder, _content];
public_jobs_var_vehicle setVariable["container", _container];
public_jobs_delivery_var_packages deleteAt (public_jobs_delivery_var_packages find _holder);
deleteVehicle _holder;
