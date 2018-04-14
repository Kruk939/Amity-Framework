private _places = ["crafting_get_places", 2] call ExternalS_fnc_ExtDBasync;
{
      _x params["_id", "_class"];
      private _list = [format["crafting_get_list:%1", _id], 2] call ExternalS_fnc_ExtDBasync;
      {
            _x params["_id", "_class", "_type", "_amount", "_time", "_faction_id"];
            private _needed = [format["crafting_get_needed:%1", _id], 2] call ExternalS_fnc_ExtDBasync;
            _x pushBack _needed;
      } forEach _list;
      _x pushBack _list;
} forEach _places;

private _default = ["crafting_get_list_default", 2] call ExternalS_fnc_ExtDBasync;
{
      _x params["_id", "_class", "_type", "_amount", "_time", "_faction_id"];
      private _needed = [format["crafting_get_needed:%1", _id], 2] call ExternalS_fnc_ExtDBasync;
      _x pushBack _needed;
} forEach _default;

crafting_var_list = _places;
crafting_var_default = _default;
publicVariable "crafting_var_list";
publicVariable "crafting_var_default";
