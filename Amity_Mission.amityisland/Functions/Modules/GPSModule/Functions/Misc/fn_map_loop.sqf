private _faction_id = player getVariable ["faction_id", -1];
if(_faction_id == -1) exitWith {};
waitUntil{visiblemap};
private _markers = [];
if(visibleMap && "ItemGPS" in assignedItems player || visibleGPS) then {
	{
		if (( _x getVariable["faction_id",-1]) == _faction_id ) then {
			private _marker = createMarkerLocal [format["gps_module_%1", getPlayerUID player], visiblePosition _x];
			_marker setMarkerColorLocal getText(missionConfigFile >> "GPSModule" >> "Marker" >> "color");
			_marker setMarkerTypeLocal getText(missionConfigFile >> "GPSModule" >> "Marker" >> "type");
			_marker setMarkerTextLocal format["%1", _x getVariable["name", ""]];
			_markers pushBack [_marker,_x];
		};
	} foreach PlayableUnits;
	while {visibleMap || visibleGPS} do
	{
		{
                  _x params[["_marker", ""], ["_unit", objNull]];
			if(!isNull _unit) then {
				if ("ItemGPS" in assignedItems _unit) then {
					_marker setMarkerPosLocal (visiblePosition _unit);
				};
			};
		} foreach _markers;
		if(!visibleMap) exitWith {};
		uiSleep getNumber(missionConfigFile >> "GPSModule" >> "refresh");
	};
	{deleteMarkerLocal (_x select 0);} foreach _markers;
};
