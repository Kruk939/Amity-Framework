private ["_intKey","_cancelActionKey","_handle"];
params ["_disp","_keycode","_shift","_ctrl","_alt"];
_handle = false;
//Keys responsible for interrupting actions
_cancelActionKey = [1,16,31,32,44]; //ESC,A,S,D,W for now.

//code for finding UserAction 10 key
_intKey = if (count(actionKeys "User10") == 0) then { [219] } else {(actionKeys "User10")};

//For interrupting various actions, processing, repairing etc.
/*if (amity_inAction) exitWith {
      if (_keycode in _cancelActionKey && !amity_interrupted) then {amity_interrupted = true; };
};*/

//Windows handling?
if (_keycode in _intKey) exitWith {/* Windows key handler here. */ };

switch (_keyCode) do {
      //ESC
      /*case 1: {
       Silent sync ?
      };*/
      //TAB KEY - Surrender
      case 15: {
            if (!_alt && !_shift) then {
                  if (player getVariable ["surrender", false]) then {
                        player setVariable ["surrender", nil, false];
                  } else {
                        [] spawn Client_fnc_surrenderAction;
                };
            };
      };
      //U - unclock/lock veh
      case 22: {
            if( (cursorobject iskindof "Car" || cursorobject iskindof "Ship" || cursorobject iskindof "Air") || vehicle player != player ) then {
            private _veh = cursorObject;
            if(vehicle player != player) then { _veh = vehicle player; };
            private _locked = locked _veh;
            //check if vehicle is yours or you have keys
            if (_locked == 2) then {
                  if(local _veh) then {
				_veh lock 0;
			} else {
				[_veh,0] remoteExecCall ["client_fnc_lock",_veh];
			};
                  //play sound
                  ["unlocked", true] remoteExec ["Client_fnc_domsg", player];
            } else {
                  if(local _veh) then {
                        _veh lock 2;
                  } else {
                        [_veh,2] remoteExecCall ["client_fnc_lock",_veh];
                  };
                  //play sound
                  ["Locked", true] remoteExec ["Client_fnc_domsg", player];
            };
      };
      };
      //Earplugs SHIFT+O - doesnt work for some reason
      case 24:{
            if (_shift && !_alt && !_ctrl) then {
            switch (player getVariable ["Earplugs",0]) do {
			case 0: {hintSilent "Ear Plugs 90%"; 1 fadeSound 0.1; player setVariable ["Earplugs", 10]; };
			case 10: {hintSilent "Ear Plugs 60%"; 1 fadeSound 0.4; player setVariable ["Earplugs", 40]; };
			case 40: {hintSilent "Ear Plugs 30%"; 1 fadeSound 0.7; player setVariable ["Earplugs", 70]; };
			case 70: {hintSilent "Ear Plugs Removed"; 1 fadeSound 1; player setVariable ["Earplugs", 0]; };
		    };
                _handle = true;
            };
      };
      //SHIFT + H  Holster/unholster weapon
      case 35: {
		if(_shift && !_ctrl && currentWeapon player != "") then {
			amity_currWeapon = currentWeapon player;
			player action ["SwitchWeapon", player, player, 100];
			player switchCamera cameraView;
		};

		if(!_shift && _ctrl && !isNil "amity_currWeapon" && {(amity_currWeapon != "")}) then {
			if(amity_currWeapon in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
				player selectWeapon amity_currWeapon;
			};
		};
	};
      //Shift - endmission  "fix"
      case 74:
	{
        if (_shift) then {
		[] spawn {
                  disableUserInput true;
                  sleep 1;
                  disableUserInput false;
                  _handle = true;
		 };
        };
	};
};

_handle;
