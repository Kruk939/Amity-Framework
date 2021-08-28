params[["_id", -1]];
if(_id == -1) exitWith {};
private _vehicle = [format["showroom_update_count:%1", _id], 2] call ExternalS_fnc_ExtDBasync;
if(count _vehicle == 0) exitWith {};
_vehicle = _vehicle select 0;
_vehicle params["_id", "", "", "_type", "", "", "", "_count", "_faction_id", ""];
if(typeName _faction_id == "OBJECT") then {
      private _arr = switch(_type) do {
            case "car": { showroom_var_vehicles_car };
            case "ship": { showroom_var_vehicles_ship };
            case "air": { showroom_var_vehicles_air };
      };
      private _index = -1;
      {
            if((_x select 0) == _id) exitWith {
                  _x set[7, _count];
                  _index = _forEachIndex;
            };
      } forEach _arr;
      if(_count <= 0 && _index != -1) then {
            _arr deleteAt _index;
      };
} else {
      private _arr = switch(_type) do {
            case "car": { showroom_var_vehicles_faction_car };
            case "ship": { showroom_var_vehicles_faction_ship };
            case "air": { showroom_var_vehicles_faction_air };
      };
      {
            if((_x select 0) == _faction_id) exitWith {
                  private _index = -1;
                  private _vehs = _x select 1;
                  {
                        if((_x select 0) == _id) exitWith {
                              _x set[7, _count];
                              _index = _forEachIndex;
                        };
                  } forEach _vehs;
                  if(_count <= 0 && _index != -1) then {
                        _arr deleteAt _index;
                  };
            };
      } forEach _arr;
};
