private _basic = getArray(missionConfigFile >> "Shop" >> "basic");
private _array = [];
{
      _x params["_name", "_id", "_class", "_pos"];
      private _condition = {true};
      if(!isNil "_pos") then {
            _condition = compile(format["_target distance %1 < 10", _pos]);
      };
      private _code = format["[%1, _target] call ClientModules_Shop_fnc_open;", _id];
      _code = compile _code;
      _array pushBack [
            [format["SHOP_BASIC_%1", _forEachIndex], localize _name, "", _code,_condition,{},"","screenloc",3],
            ["class", [_class, 0, ["ACE_MainActions"]]]
      ];
} forEach _basic;

private _faction = getArray(missionConfigFile >> "Shop" >> "faction");
{
      _x params["_name", "_id", "_class", "_faction_id", "_pos", "_distance"];
      private _code = format["[%1, _target] call ClientModules_Shop_fnc_open;", _id];
      private _condition = format["player getVariable[""faction_id"", -1] == %1 && _target distance %2 < %3", _faction_id, _pos, _distance];
      _code = compile _code;
      _condition = compile _condition;
      _array pushBack [
            [format["SHOP_FACTION_%1", _forEachIndex], localize _name, "", _code,_condition,{},"","screenloc",3],
            ["class", [_class, 0, ["ACE_MainActions"]]]
      ];
} forEach _faction;

_array call Client_fnc_addAction;
