private _ret = [];
{
      _x params["_name", "_function"];
      private _arr = call _function;
      _ret pushBack[_forEachIndex, _name call BIS_fnc_localize, _arr];
} forEach phone_var_services;
_ret;
