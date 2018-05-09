params[["_var", ""]];
private _ret = [];
_var = toLower(_var);
if(_var == "") exitWith { _ret; };
{
      _x params["_item", "_class"];
      if(_item == _var || _class == _var) exitWith {
            _ret = _x;
      };
} forEach UsableItems_var_placable;
_ret;
