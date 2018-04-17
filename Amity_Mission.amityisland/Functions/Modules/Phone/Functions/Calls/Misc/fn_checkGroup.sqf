private _group = player getVariable["phone_call_group", []];
private _newGroup = [];
{
      if(!isNull _x && isPlayer _x) then {
            _newGroup pushBack _x;
      };
} forEach _group;
player setVariable["phone_call_group", _newGroup];
_newGroup;
