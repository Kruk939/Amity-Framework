params[["_name", ""]];
private _found = false;
if(_name == "") exitWith { _found; };
{
      _x params["_key", "_data"];
      {
            _x params["_n", "", ""];
            if(_name == _n) exitWith {
                  _data deleteAt _forEachIndex;
                  _found = true;
            };
      } forEach _data;
      if(_found) exitWith {};
} forEach amity_var_keys;
_found;
