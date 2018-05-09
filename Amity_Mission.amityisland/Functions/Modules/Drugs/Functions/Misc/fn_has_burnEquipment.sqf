private _ret = false;
private _equipment = getArray(missionConfigFile >> "Drugs" >> "Config" >> "Fire" >> "burnEquipment");
{
      if(([_x] call Client_fnc_countItems) > 0) exitWith {
            _ret = true;
      };
} forEach _equipment;
_ret;
