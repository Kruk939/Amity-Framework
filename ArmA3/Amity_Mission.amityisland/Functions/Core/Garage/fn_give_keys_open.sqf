params[["_target", objNull]];
if(isNull _target) exitWith {};

disableSerialization;
private _dialog = getText (missionConfigFile >> "Amity" >> "Custamization" >> "Dialogs" >> "giveKeys");
if(dialog) then { closeDialog 0; };
private _ok = createDialog _dialog;
if(!_ok) exitWith {};
private _display = findDisplay 1006;
if(isNull _display) exitWith { closeDialog 0; };
_display setVariable["target", _target];
ctrlSetText[1000, _target getVariable["name", ""]];
{
      private _id = _x getVariable["id", -1];
      if(!isNull _x && _id != -1) then {
            private _name = getText(configFile >> "CfgVehicles" >> typeOf _x >> "displayName");
            private _plate = _x getVariable["plate", ""];
            if(_plate != "") then { _plate = format["[%1]", _plate]};
            private _index = lbAdd[2100, format["[%1] %2 %3",_id, _name, _plate]];
            lbSetData[2100, _index, str(_id)];
      };
} forEach amity_var_vehicles;
if(lbSize 2100 != 0) then { lbSetCurSel[2100, 0]; };
