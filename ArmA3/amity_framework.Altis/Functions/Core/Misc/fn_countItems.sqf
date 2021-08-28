params[["_className",""], ["_assigned", true]];
private["_count","_searchArray"];
if(_className == "") exitWith {0};
_searchArray = (uniformItems player) + (vestItems player) + (backpackItems player);
if(_assigned) then {
      _searchArray = _searchArray + (assignedItems player);
};
_count = 0;
{
      if(_className == _x) then {
            _count = _count + 1;
      };
} forEach _searchArray;
_count
