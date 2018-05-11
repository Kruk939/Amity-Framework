if(player getVariable["jail_sentences", -1] < getNumber(missionConfigFile >> "Jail" >> "Setup" >> "Permissions" >> "sentenceView")) exitWith {
      ["STR_JAIL_NO_PERRMISION", true] call Client_fnc_domsg;
};
private _jail = [player] call ClientModules_Jail_fnc_jail_getNearest;
if(isNull _jail) exitWith { ["STR_JAIL_NO_NEAR", true] call Client_fnc_domsg; };
private _jail_id = getNumber(_jail >> "id");

if(dialog) then { closeDialog 0; };
private _ok = createDialog "jail_sentences";
if(!_ok) exitWith {};
disableSerialization;
private _display = findDisplay 13000;
if(isNull _display) exitWith {};
_display setVariable["jail_id", _jail_id];
[_jail_id, player, "ClientModules_Jail_fnc_jail_sentences_receive"] remoteExec["ServerModules_Jail_fnc_getJailSentences", 2];
{
      private _profile_id = _x getVariable["profile_id", -1];
      if(_profile_id != -1 && _x getVariable["jail_jailed", false]) then {
            private _index = lbAdd[1502, format["%1", _x getVariable["name", ""]]];
            lbSetData[1502, _index, str(_profile_id)];
      };
} forEach allPlayers;
