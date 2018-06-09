params[["_variables", []], ["_player", objNull]];
if(isNull _player) exitWith {};
diag_log format["[ANTIHACK]-------------------- Checking all variables of player: %1(%2)", getPlayerUID _player, name _player];
private _badVars = [];
private _kick = false;
private _time = time;
{
      private _var = _x splitString ":" joinString "_";
      if(!(_var IN anithack_var_good_variables)) then {
            //log variable
            [_var, _player] call ServerModules_AntiHack_fnc_logVariable;
            if(!(_var IN anithack_var_bad_variables)) then {
                  //insert grey variable
                  [_var] call ServerModules_AntiHack_fnc_insertGreylist;
            } else {
                  _badVars pushBack _var;
                  _kick = true;
            };
      };
} forEach _variables;

if(_kick) then {
      diag_log format["[ANTIHACK]-------------------- Player: %1(%2) usage of bad variables: %3", getPlayerUID _player, name _player, _badVars];
};
diag_log format["[ANTIHACK]-------------------- Checking complete of: %1(%2) | Elapsed: %3", getPlayerUID _player, name _player, time - _time];
