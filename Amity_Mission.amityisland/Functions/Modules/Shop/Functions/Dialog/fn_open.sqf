params[["_id", -1], ["_target", objNull]];
if(_id == -1) exitWith {};

private _exit = false;
if(!isNil "ClientModules_Robbery_fnc_robShop") then {
      private _config = (missionConfigFile >> "Robbery" >> "Shop");
      private _cooltime = getNumber(_config >> "Time" >> "cooltime");
      if(_target getVariable["robbery_inprogress", false]) exitWith {
            _exit = true;
            ["STR_ROBBERY_ROB_SHOP_INPROGRESS", true] call Client_fnc_doMsg;
      }; //is being robbed
      private _lastRobbery = _target getVariable["robbery_last", time - _cooltime - 1];
      if(_lastRobbery + _cooltime > time && _cooltime > 0) exitWith {
            _exit = true;
            ["STR_ROBBERY_ROB_SHOP_LAST_ROBBED", true] call Client_fnc_doMsg;
      }; //last robbed
};
if(_exit) exitWith {};

disableSerialization;
private _ok = createDialog "Amity_store";
if(!_ok) exitWith {};
private _display = findDisplay 9900;
if(isNull _display) exitWith { closeDialog 0; };
_display setVariable["target", _target];
[_id, player, "ClientModules_Shop_fnc_receive"] remoteExecCall ["ServerModules_Shop_fnc_getShop", 2];
