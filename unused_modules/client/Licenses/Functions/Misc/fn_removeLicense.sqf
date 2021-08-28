params[["_profile_id", -1], ["_license_id", -1]];
private _ret = false;
if(_profile_id == -1 || _license_id == -1) exitWith { _ret; };
if(_profile_id != player getVariable["profile_id", -1]) exitWith { _ret; };
private _index = -1;
{
      _x params["", "_id"];
      if(_license_id == _id) exitWith {
            _index = _forEachIndex;
      };
} forEach licenses_var_profile;
if(_index != -1) then {
      licenses_var_profile deleteAt _index;
      _ret = true;
};
_ret;
