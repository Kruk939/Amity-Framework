params[["_variable", ""]];
private _config = [_variable] call ClientModules_PublicJobs_fnc_getConfig;
if(isNull _config) exitWith { 0; };
private _limits = getArray(_config >> "limits");
private _current = count allPlayers;
private _limit = 0;
{
      _x params["_max", "_top"];
      _limit = _max;
      if(_current < _top) exitWith {};
} forEach _limits;
_limit;
