if(dialog) then { closeDialog 0; };
private _ok = createDialog "license_wallet";
if(!_ok) exitWith {};
{
      _x params["_id", "_license_id", "", ""];
      private _license = [_license_id] call ClientModules_Licenses_fnc_get;
      _license params["", "", "_name"];
      private _index = lbAdd[1500, _name];
      lbSetData [1500, _index, str(_id)];
} forEach licenses_var_profile;


private _bankMoney = player getVariable ["bank", 0];
private _cashMoney = player getVariable ["cash", 0];
ctrlSetText [1001, format["$%1",[_cashMoney] call CBA_fnc_formatNumber]];
ctrlSetText [1002, format["$%1",[_bankMoney] call CBA_fnc_formatNumber]];
