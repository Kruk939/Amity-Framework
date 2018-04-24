params[["_target", objNull]];
if(isNull _target) exitWith {};

private _item =  getText(missionConfigFile >> "Mechanic" >> "Items" >> "fuelCanister");
private _count = [_item] call Client_fnc_countItems;
if(_count == 0) exitWith {};
private _fuel = fuel _target;
if(_fuel == 1) exitWith { ["Vehicle has full tank!", true] spawn Client_fnc_domsg; };
private _toRefil = 1 - _fuel;
if(_toRefil > 0.2) then { _toRefil = 0.2; };
private _time = 25 * _toRefil;


private _onFinish = {
      (_this select 0) params["_target", "_toRefil"];
      private _count = ["openrp_canister_fuel"] call Client_fnc_countItems;
      if(_count == 0) exitWith { ["Cancelled", true] spawn Client_fnc_domsg; };
      private _fuel = fuel _target;
      _fuel = _fuel + _toRefil;
      if(_fuel > 1) then { _fuel = 1; };
      [_target, _fuel] remoteExec ["setFuel", 0];
      [player, "openrp_canister_fuel"] call CBA_fnc_removeItem;
      [player, "openrp_canister"] call CBA_fnc_addItem;
      [format["You refiled vehicle by %1%2", _toRefil * 100, "%"], true] spawn Client_fnc_domsg;
};

private _onFailure = {
      ["Cancelled", true] spawn Client_fnc_domsg;
};
[_time, [_target, _toRefil],_onFinish,_onFailure,"Refueling vehicle..."] call Client_fnc_progressBar;
