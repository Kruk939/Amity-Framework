params[["_type", ""]];
disableSerialization;
if(!dialog) exitWith {};
private _display = findDisplay 13000;
if(isNull _display) exitWith { closeDialog 0; };
private _jail_id = _display getVariable["jail_id", -1];
private _data = _display getVariable["data", []];
if(_jail_id == -1) exitWith { closeDialog 0; };

private _findPlayer = {
      params[["_profile_id", -1]];
      private _ret = [];
      if(_profile_id == -1) exitWith { _ret; };
      {
            if((_x select 0) == _profile_id) exitWith {
                  _ret = _x;
            };
      } forEach _data;
      _ret;
};
private _getSentence = {
      params[["_d", []], ["_i", []]];
      private _ret = [];
      {
            if((_x select 0) == _i) exitWith {
                  _ret = _x;
            };
      } forEach _d;
      _ret;
};
private _summary = {
      params[["_sentences", []]];
      private _left = 0;
      private _max = 0;
      private _security = -1;
      {
            _max = _max + (_x select 1);
            _left = _left + (_x select 2);
            if(_security < (_x select 3)) then { _security = _x select 3};
      } forEach _sentences;
      [_left, _max, _security];
};

if(_type == "LB") exitWith {
      private _index = lbCurSel 1500;
      if(_index == -1) exitWith { lbClear 1501; ctrlSetText[1000, ""]; };
      private _d = [parseNumber(lbData[1500, _index])] call _findPlayer;
      if((count _d) == 0) exitWith { lbClear 1501; ctrlSetText[1000, ""]; };
      _d params["", "_name", "_active", "_sentences"];
      private _sum = [_sentences] call _summary;
      _sum params["_timeLeft", "_total", "_security"];
      private _in_jail = if(_active == 1) then { localize "STR_JAIL_DIALOG_SENTENCES_IN_JAIL"; } else { localize "STR_JAIL_DIALOG_SENTENCES_ESCAPED"; };
      ctrlSetText[1000, format[localize "STR_JAIL_DIALOG_SENTENCES_TEXT_INFO_SUMMARY", _name, _in_jail, _timeLeft, _total, _security, count _sentences]];
      lbClear 1501;
      {
            _x params["_id", "", "", "", "_reason", ""];
            private _index = lbAdd[1501, format["%1 %2", _id, _reason]];
            lbSetData[1501, _index, str(_id)];
      } forEach _sentences;
};
if(_type == "LB_SET") exitWith {
      private _index = lbCurSel 1500;
      if(_index == -1) exitWith { ctrlSetText[1001, ""]; };
      private _d = [parseNumber(lbData[1500, _index])] call _findPlayer;
      if((count _d) == 0) exitWith {  ctrlSetText[1001, ""]; };
      _d params["", "", "", "_sentences"];
      _index = lbCurSel 1501;
      if(_index == -1) exitWith { ctrlSetText[1001, ""]; };
      private _sentence = [_sentences, parseNumber(lbData[1501, _index])] call _getSentence;
      _sentence params["_id", "_sentence", "_timeLeft", "_security", "_reason", "_officerName"];
      ctrlSetText[1001, format[localize "STR_JAIL_DIALOG_SENTENCES_TEXT_INFO_SENTENCE", _id, _timeLeft, _sentence, _officerName, _reason]];
};
if(_type == "RELEASE") exitWith {

};
