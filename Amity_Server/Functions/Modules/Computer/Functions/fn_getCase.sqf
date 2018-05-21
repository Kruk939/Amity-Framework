params[["_id", -1], ["_vehicle", false], ["_player", objNull], ["_function", ""]];
if(_id == -1) exitWith {};
      private _query = if(_vehicle) then { "computer_select_wanted_vehicles_case"; } else { "computer_select_wanted_profiles_case"; };
private _case = [format["%1:%2", _query, _id], 2] call ExternalS_fnc_ExtDBasync;
if(count _case != 0) then { _case = _case select 0; };
if(!isNull _player && _function != "") exitWith {
      [_case] remoteExec[_function, _player];
};
_case;
