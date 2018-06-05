disableSerialization;
if(!dialog) exitWith {};
params[["_type", ""]];
private _display = findDisplay 1103;
if(isNull _display) exitWith { closeDialog 0; };
private _categories = _display getVariable["categories", []];
private _find_category = {
      params[["_id", -1]];
      private _ret = [];
      if(_id == -1) exitWith {_ret;};
      {
            if(_id == (_x select 0)) exitWith { _ret = _x; };
      } forEach _categories;
      _ret;
};

switch(_type) do {
      case "LB": {

      };
      case "CB": {
            private _index = lbCurSel 1500;
            if(_index == -1) exitWith {};
            private _id = parseNumber(lbData[1500, _index]);
            private _category = [_id] call _find_category;
            lbClear 1501;
            if(count _category == 0) exitWith {};
            _category params["", "", "_list"];
            {
                  _x params["_name", "_number"];
                  private _index = lbAdd [1501, _name];
                  lbSetdata[1501, _index, _number];
            } foreach _list;
      };
      case "call": {
            private _index = lbCurSel 1501;
            if(_index == -1) exitWith {};
            private _number = lbData[1501, _index];
            [_number] call ClientModules_Phone_fnc_call;
            closeDialog 0;
      };
};
