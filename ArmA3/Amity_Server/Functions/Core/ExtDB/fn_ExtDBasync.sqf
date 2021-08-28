private["_queryStmt","_queryResult","_key","_mode","_return","_loop"];

if (!params [
	["_queryStmt", "", [""]],
	["_mode", 0, [0]]
]) exitWith {};

_key = "extDB3" callExtension format["%1:%2:%3",_mode, (call extDB_SQL_CUSTOM_ID), _queryStmt];
if(_mode isEqualTo 1) exitWith {true};

diag_log "ExtDB ASYNC:"; 
diag_log _queryStmt;

_key = call compile format["%1",_key];
_key = _key select 1;

/*_start = diag_tickTime;
_sleepLoop = true;
while {_sleepLoop} do {
	if (diag_tickTime > (_start + 30)) then {
		_sleepLoop = false;
	};
};*/

_queryResult = "";
_loop = true;
for "_i" from 0 to 1 step 0 do {
	if (!_loop) exitWith {};
	_queryResult = "extDB3" callExtension format["4:%1", _key];
	if (_queryResult isEqualTo "[5]") then {
		_queryResult = "";
		while{true} do {
			_pipe = "extDB3" callExtension format["5:%1", _key];
			if(_pipe isEqualTo "") exitWith {_loop = false};
			_queryResult = _queryResult + _pipe;
		};
	} else {
		if (_queryResult isEqualTo "[3]") then {
			/*_start = diag_tickTime;
			_sleepLoop = true;
			while {_sleepLoop} do {
				if (diag_tickTime > (_start + 100)) then {
					_sleepLoop = false;
				};
			};*/
		} else {
			_loop = false;
		};
	};
};


_queryResult = call compile _queryResult;

if ((_queryResult select 0) isEqualTo 0) exitWith {diag_log format ["extDB3: Protocol Error: %1", _queryResult]; []};
_return = (_queryResult select 1);
diag_log _return;
_return;