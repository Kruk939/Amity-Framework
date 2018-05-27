params[["_holder", objNull]];
if(isNull _holder) exitWith {};
private _shop = _holder getVariable["shop", -1];
private _target = _holder getVariable["target", objNull];
private _locked = _holder getVariable["locked", false];
private _amount = _holder getVariable["amount", false];
if(_shop == -1 || isNull _target) exitWith {};
if(_holder distance _target > 20) exitWith {}; // you are to far away
private _config = (missionConfigFile >> "PublicJobs" >> "Jobs" >> "Delivery" >> "Setup" >> "Paycheck");

private _content = [_holder] call Client_fnc_getCargo;
private _count = 0;
{
      _x params["_i", ""];
      _count = _count + (count _i);
} forEach _content;

if(!_locked) exitWith {
      public_jobs_delivery_var_packages_count = public_jobs_delivery_var_packages_count - 1;
      public_jobs_delivery_var_packages deleteAt (public_jobs_delivery_var_packages find _holder);
      public_jobs_delivery_var_enroute_toShops = false;
      deleteVehicle _holder;
      if(_count == 0) then {
            [0 - getNumber(_config >> "emptyCargoFine")] call ClientModules_PublicJobs_fnc_addPaycheck;
            //no stuff in here
      } else {
            if(_count == _amount) then {
                  //is unlocked but remove moneys cause not sealed
                        [getNumber(_config >> "sealUnlocked")] call ClientModules_PublicJobs_fnc_addPaycheck;
            } else {
                  [getNumber(_config >> "sealUnlocked") / getNumber(_config >> "countMismatch")] call ClientModules_PublicJobs_fnc_addPaycheck;
                  //package compromised
            };
            [_holder, _shop] remoteExec["ServerModules_Shop_fnc_handleRefil", 2];
      };
};
if(_count == 0) exitWith {
      [0 - getNumber(_config >> "emptyCargoFine")] call ClientModules_PublicJobs_fnc_addPaycheck;
      public_jobs_delivery_var_packages_count = public_jobs_delivery_var_packages_count - 1;
      public_jobs_delivery_var_packages deleteAt (public_jobs_delivery_var_packages find _holder);
      public_jobs_delivery_var_enroute_toShops = false;
      deleteVehicle _holder;
 }; //no stuff here, no payment
 [getNumber(_config >> "delivery")] call ClientModules_PublicJobs_fnc_addPaycheck;
 public_jobs_delivery_var_packages_count = public_jobs_delivery_var_packages_count - 1;
 public_jobs_delivery_var_packages deleteAt (public_jobs_delivery_var_packages find _holder);
 public_jobs_delivery_var_enroute_toShops = false;
[_holder, _shop, true] remoteExec["ServerModules_Shop_fnc_handleRefil", 2];
