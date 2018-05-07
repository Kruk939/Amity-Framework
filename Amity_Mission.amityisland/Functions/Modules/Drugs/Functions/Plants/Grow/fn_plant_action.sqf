params[["_plant", objNull], ["_type", ""]];
if(isNull _plant || _type == "") exitWith {};
private _config = [typeOf _plant, "plant"] call ClientModules_Drugs_fnc_plant_getConfig;
if(isNull _config) exitWith {};
private _actions = getArray(_config >> "Growing" >> "actions");
private _action = [];
{
      _x params["_t"];
      if(toLower(_t) == toLower(_type)) exitWith {
            _action = _x;
      };
} forEach _actions;

_action params["", "_time", "_text", "", "", "_item"];
if(_item != "" && (([_item] call Client_fnc_countItems) == 0)) exitWith { ["NO ITEM", true] call Client_fnc_domsg; };

private _onFinish = {
      (_this select 0) params["_plant", "_action"];
      [player, "AmovPknlMstpSrasWrflDnon", 1] call ace_common_fnc_doAnimation;
      _action params ["", "", "", "_variable", "_add", "_item", "_remove"];
      if(_item != "" && _remove == 1) then { player removeItem _item; };
      private _amount = _plant getVariable[_variable, 0];
      _plant setVariable[_variable, _amount + _add];
};
private _onFailure = {
      [player, "AmovPknlMstpSrasWrflDnon", 1] call ace_common_fnc_doAnimation;

};
[_time, [_plant, _action], _onFinish, _onFailure, _text call BIS_fnc_localize] call Client_fnc_progressBar;
