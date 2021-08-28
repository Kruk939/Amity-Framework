private _actions = [];

private _configs = [] call ClientModules_Evidence_fnc_getConfigs;
{
      private _config = _x;
      private _act = getArray(_config >> "actions");
      {
            _x params["_class", "_acti", ["_position", ""]];
            _actions pushBack [
                  [format["EVIDENCE_%1_%2",getText(_config >> "variable"), _forEachIndex], localize "STR_EVIDENCE_CHECK_ACTION", "", {[_target] call ClientModules_Evidence_fnc_checkEvidenceAction;}, {(_target getVariable["evidence_type", ""]) != "" && (player getVariable["module_evidence_check", -1]) != -1},{},"",_position,3],
                  ["class", [_class, 0, _acti]]
            ];
      } forEach _act;
} forEach _configs;
_actions call Client_fnc_addAction;