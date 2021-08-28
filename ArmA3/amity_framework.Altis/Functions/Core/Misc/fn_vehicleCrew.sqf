params[["_vehicle", objNull], ["_withPlayer", false]];
private _ret = [];
if(isNull _vehicle) exitWith { _ret; };
private _arr = fullCrew _vehicle;
{
      _x params["_obj"];
      if(_withPlayer || _obj != player) then {
            _ret pushBack _obj;
      };
} forEach _arr;
_ret;
