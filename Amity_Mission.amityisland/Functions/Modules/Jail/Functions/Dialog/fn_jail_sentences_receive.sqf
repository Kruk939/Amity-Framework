params[["_data", []]];
disableSerialization;
if(!dialog) exitWith {};
private _display = findDisplay 13000;
if(isNull _display) exitWith { closeDialog 0; };

lbClear 1500;
private _d = [];
{
      _x params["_id", "_active", "_sentence", "_timeLeft", "_security", "_reason", "_s_id", "_sFirst", "_sLast", "_o_id", "_oFirst", "_oLast"];
      private _in = false;
      private _officerName = localize "STR_JAIL_DIALOG_SENTENCES_OFFICER_NO_EXISTS";
      if(typeName _o_id != "OBJECT") then {
            _officerName = format["%1 %2", _oFirst, _oLast];
      };
      {
            if((_x select 0) == _s_id) exitWith {
                  private _dat = _x select 3;
                  _dat pushBack[_id, _sentence, _timeLeft, _security, _reason, _officerName];
                  _x set[3, _dat];
                  _in = true;
            };
      } forEach _d;
      if(!_in) then {
            private _name = format["%1 %2", _sFirst, _sLast];
            _d pushBack[_s_id, _name, _active, [[_id, _sentence, _timeLeft, _security, _reason, _officerName]]];
      };
} forEach _data;
_display setVariable["data", _d];

{
      _x params["_id", "_name", "_active", "_sentences"];
      private _val = 20000;
      private _suffix = "";
      if(_active == 1) then { _suffix = localize "STR_JAIL_DIALOG_LOCKERS_SUFFIX_ACTIVE"; _val = 10000; };
      private _player = [_id] call Client_fnc_getPlayerByProfile;
      if(!isNull _player) then {
            if(_player getVariable["jail_jailed", false]) then {
                  _suffix = localize "STR_JAIL_DIALOG_LOCKERS_SUFFIX_ONLINE";
                  _val = 0;
            };
      };
      private _index = lbAdd[1500, format["%1 %2", _name, _suffix]];
      lbSetData[1500, _index, str(_id)];
      lbSetValue[1500, _index, _val + _id];
} forEach _d;
lbSortByValue 1500;
if(lbSize 1500 != 0) then { lbSetCurSel[1500, 0]; };
