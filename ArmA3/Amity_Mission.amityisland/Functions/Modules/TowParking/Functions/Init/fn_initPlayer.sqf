private _places = getArray(missionConfigFile >> "TowParking" >> "places");
{
      _x params["_pos", ""];
      private _m = format["tow_parking_%1", _forEachIndex];
      private _marker = createMarkerLocal [_m, _pos];
      _marker setMarkerShapeLocal "ICON";
      _marker setMarkerTypeLocal  "hd_dot";
      _marker setMarkerColorLocal "ColorBlue";
      _marker setMarkerTextLocal (localize "STR_TOW_PARKING_MARKER");
}  forEach _places;
