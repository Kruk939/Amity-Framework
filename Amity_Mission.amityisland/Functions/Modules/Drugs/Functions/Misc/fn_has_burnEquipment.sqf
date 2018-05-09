private _ret = false;
private _equipment = getArray(missionConfigFile >> "Drugs" >> "Config" >> "Fire" >> "burnEquipment");
if(count _equipment != 0) then {
      {
            if(([_x] call Client_fnc_countItems) > 0) exitWith {
                  _ret = true;
            };
      } forEach _equipment;
} else {
      _ret = true;
};
_ret;
