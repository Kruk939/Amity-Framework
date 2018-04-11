params[["_place_id", -1]];
//getting list
private _list = [];
if(_place_id == -1) then {
      _list = crafting_var_default;
} else {
      {
            _x params["_id", "", "_l"];
            if(_id == _place_id) exitWith {
                  _list = _l;
            };
      } forEach crafting_var_list;
};
if((count _list) == 0) exitWith {};

//opening dialog and basic check
if(dialog) then { closeDialog 0; };
disableSerialization;
private _ok = createDialog "crafting";
if(!_ok) exitWith {};
private _display = findDisplay 9910;
if(isNull _display) exitWith {};
private _faction = player getVariable["faction_id", -1];
private _added = [];

{
      _x params["_id", "_class", "_type", "_amount", "_time", "_faction_id", "_needed"];
      if(typename _faction_id == "OBJECT") then {_faction_id == -1};
      if(_faction_id == _faction || _faction_id == -1) then {
            private _item = [_class] call Client_fnc_fetchItem;
            if(count _item != 0) then {
                  _item params ["", "_display", "_picture", "_desc"];
                  private _index = lbAdd[1500, format["%1x %2", _amount, _display]];
                  lbSetPicture[1500, _index, _picture];
                  lbSetData[1500, _index, str(_id)];
                  _added pushBack _x;
            };
      };
} forEach _list;
_display setVariable ["list", _added];
