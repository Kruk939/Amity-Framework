params[["_target", objNull], ["_type", ""]];
if(isNull _target) exitWith {};
private _bank = [] call ClientModules_Robbery_fnc_getNearestMainBank;
if(isNull _bank) exitWith {};

private _config = switch(_type) do {
      case "vault": {(missionConfigFile >> "Robbery" >> "MainBank" >> "crashVault")};
      case "grind": {(missionConfigFile >> "Robbery" >> "MainBank" >> "Grind")};
      default { configNull; };
};
if(isNull _config) exitWith {};

if(typeOf _target != getText(_config >> "objClass")) exitWith {}; //something is wrong
private _item = getText(_config >> "item"); if(_item != "" && ([_item] call Client_fnc_countItems) == 0) exitWith {
      ["STR_ROBBERY_MAIN_BANK_NO_ITEM", true] call Client_fnc_doMsg;
}; //no item

private _min = getNumber(_config >> "Time" >> "min");
private _max = getNumber(_config >> "Time" >> "max");
private _time = round(random(_max - _min) + _min);

private _onFinish = {
      (_this select 0) params["", "_bank", "_config"];
      private _variables = getArray(_config >> "variables");
      private _animate = getArray(_config >> "animate");
      {
            _bank setVariable[_x select 0, _x select 1, (_x select 2) == 1];
      } forEach _variables;
      {
            _bank animate[_x select 0, _x select 1];
      } forEach _animate;
      if(getNumber(_config >> "remove") == 1) then {
            player removeItem getText(_config >> "item");
      };
};
private _onFailure = {};
[_time, [_target, _bank, _config], _onFinish, _onFailure, getText(_config >> "title") call BIS_fnc_localize] call Client_fnc_progressBar;
