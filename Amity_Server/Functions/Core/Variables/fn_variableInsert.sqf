params[["_id", -1], ["_name", ""], ["_type", ""], "_value"];
if(isNil "_value" || _id == -1 || _name == "" || _type == "") exitWith {};
private _ty = typeName _value;
private _arr = [-1, objNull, objNull, objNull, objNull, _name, "", _ty, 0, 0];
if(_ty != "STRING") then {
      _value = str(_value);
      _arr set[6, _value];
};
private _query = "";
switch(_type) do {
      case "FACTION": {
            _query = "core_variable_insert_faction";
            _arr set[1, _id];
      };
      case "PROFILE": {
            _query = "core_variable_insert_profile";
            _arr set[2, _id];
      };
      case "USER": {
            _query = "core_variable_insert_user";
            _arr set[3, _id];
      };
      case "GARAGE": {
            _query = "core_variable_insert_garage";
            _arr set[4, _id];
      };
};
if(_query != "") then {
      [0, format["%1:%2:%3:%4:%5", _query, _id, _name, _value, _ty]] call ExternalS_fnc_ExtDBquery;
      amity_var_variables pushBack _arr;
};
