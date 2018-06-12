params[["_reward", 0], ["_inCases", false]];
if(_reward == 0) exitWith {};
private _cases = getArray(missionConfigFile >> "Robbery" >> "Config" >> "cases");
private _anyCases = (count _cases != 0);

if(_anyCases && _inCases) then {
      private _toAdd = [];
      private _left = _reward;
      {
            _x params["_class", "_value"];
            private _f = floor(_left / _value); //amount to fit
            if(_f > 0) then {
                  _toAdd pushBack[_class, _f];
                  _left = _left - (_f * _value);
            };
      } forEach _cases;
      {
            _x params["_class", "_amount"];
            private _i = 0;
            for [{}, {_i < _amount}, { _i = _i + 1; }] do {
                  [player, _class, true] call CBA_fnc_addItem;
            };
      } forEach _toAdd;
} else {
      [_reward] call Client_fnc_addCash;
};
private _faction = getNumber(missionConfigFile >> "Robbery" >> "Config" >> "removeFromFaction");
if(_faction > 0) then {
      [_faction, "SUB", _reward] remoteExecCall["Server_fnc_factionBankTransfer", 2];
};
