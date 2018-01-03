params[["_event", ""], ["_local", true]];
private _ret = false;
if(_event != "") then {
      amity_var_events pushBack [_event, _local, []];
      _ret = true;
};
_ret;
