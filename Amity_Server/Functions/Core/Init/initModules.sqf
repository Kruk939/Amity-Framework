private _modules = [

];
{
      private _fnc = format["%1_fnc_init", _x];
      if(!isNil _fnc) then { [] call (call compile _fnc)};
} foreach _modules;
