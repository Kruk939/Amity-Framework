params[["_holder", objNull]];
if(isNull _holder) exitWith {};
private _shop = _holder getVariable["shop", -1];
private _target = _holder getVariable["target", objNull];
private _locked = _holder getVariable["locked", false];
private _amount = _holder getVariable["amount", false];
if(_shop == -1 || isNull _target) exitWith {};
if(_holder distance _target > 20) exitWith {}; // you are to far away

private _content = [_holder] call Client_fnc_getCargo;
private _count = 0;
{
      _x params["_i", ""];
      _count = _count + (count _i);
} forEach _content;

if(!_locked) exitWith {
      deleteVehicle _holder;
      public_jobs_delivery_var_packages_count = public_jobs_delivery_var_packages_count - 1;
      if(_count == 0) then {
            //no stuff in here
      } else {
            if(_count == _amount) then {
                  //is unlocked but remove moneys cause not sealed
            } else {
                  //package compromised
            };
            [_holder, _shop] remoteExec["ServerModules_Shop_fnc_handleRefil", 2];
      };
};
if(_count == 0) exitWith { deleteVehicle _holder; public_jobs_delivery_var_packages_count = public_jobs_delivery_var_packages_count - 1; }; //no stuff here, no payment
[_holder, _shop, true] remoteExec["ServerModules_Shop_fnc_handleRefil", 2];
public_jobs_delivery_var_packages_count = public_jobs_delivery_var_packages_count - 1;
public_jobs_delivery_var_packages deleteAt (public_jobs_delivery_var_packages find _holder);
