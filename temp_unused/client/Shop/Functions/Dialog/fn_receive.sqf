params[["_shop",[]]];
if(count _shop == 0) exitWith { closeDialog 0;};
private _display = findDisplay 9900;
if(isNull _display) exitWith { closeDialog 0; };
_shop params["_id", "_name", "_faction_id", "_type", "_image", "_categories"];

if(typeName _faction_id != "OBJECT" && _type IN ["factionOnly", "factionOnlyClosed"]) then {
      private _faction = player getVariable["faction_id", -1];
      if(_faction != _faction_id) exitWith { closeDialog 0; };
};

ctrlSetText[1200, _image];
//todo check faction


private _cats = [];
{
      _x params["_id", "_name", "_access", ""];
      if(typeName _access == "OBJECT") then { _access = -1; };
      if(typeName _faction_id == "OBJECT" || _access <= player getVariable["faction_access_level", -1]) then {
            private _index = lbAdd [2100, _name];
            lbSetdata[2100, _index, str(_id)];
            _cats pushBack _x;
      };
} forEach _categories;
if(count _categories != 0) then {
      lbSetCurSel [2100, 0];
};

_display setVariable["shop", _shop];
_display setVariable["categories", _cats];
_display setVariable["items", []];

waitUntil {isNull (findDisplay 9900)};
[] call ClientModules_Shop_fnc_terminateCamera;
