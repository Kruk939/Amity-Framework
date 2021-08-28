/*
	File: fn_escInterupt.sqf


	Description:
	Monitors when the ESC menu is pulled up and blocks off
	certain controls when conditions meet.
*/
disableSerialization;
private _buttonSync = {
	disableSerialization;
	params["_display", "_button", "_time", "_name"];
	private _syncManager = {
		disableSerialization;
		params["_display", "_button", "_time", "_name"];
		private _timeStamp = time + _time;
		waitUntil {
			_button ctrlSetText format[localize "STR_ACE_BUTTON_POSSIBLE",[(_timeStamp - time),"MM:SS.MS"] call BIS_fnc_secondsToString, _name];
			_button ctrlCommit 0;
			round(_timeStamp - time) <= 0 || isNull _display
		};
		_button ctrlSetText _name;
		_button ctrlCommit 0;
	};
	private _thread = [_display, _button, _time, _name] spawn _syncManager;
	waitUntil{scriptDone _thread || isNull (findDisplay 49)};
	_button ctrlEnable true;
};

for "_i" from 0 to 1 step 0 do {
	waitUntil{!isNull (findDisplay 49)};
	private _display = findDisplay 49;
	private _exitButton = _display displayCtrl 104;
	private _abortButton = _display displayCtrl 103;
	private _respawnButton = _display displayCtrl 1010;
	private _fieldManual = _display displayCtrl 122;

	_exitButton ctrlEnable false;
	_abortButton ctrlEnable false;
	_respawnButton ctrlEnable false;
	_fieldManual ctrlEnable false; //Never re-enable, blocks an old script executor.


	private _unconscious = player getVariable["Unconscious_start", nil];
	if(isNil "_unconscious") then {
		if(getpos player distance [6371.68,5626.60,0.013] > 100) then {
			[_display, _respawnButton, 10, localize "STR_ACE_RESPAWN"] spawn _buttonSync;
			[_display, _exitButton, 10, localize "STR_ACE_EXIT"] spawn _buttonSync;
		};
	} else {
		private _timeLeft = _unconscious + 600;
		if(time < _timeLeft) then {
			[_display, _respawnButton, _timeLeft - time, localize "STR_ACE_RESPAWN"] spawn _buttonSync;
			[_display, _abortButton, 120, localize "STR_ACE_EXIT"] spawn _buttonSync;
			_exitButton ctrlShow false;
			_exitButton ctrlCommit 0;
		} else {
			_respawnButton ctrlEnable true;
		};
	};
	waitUntil{isNull (findDisplay 49)};
};
