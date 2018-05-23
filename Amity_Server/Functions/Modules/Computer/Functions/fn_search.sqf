params[["_query", ""], ["_type", ""], ["_player", objNull], ["_function", ""]];
private _types = ["name", "id", "vin", "plate"];
_query = (_query splitString ":") joinString ":";
if(_query == "") exitWith {};
if(!(_type IN _types)) exitWith {};
private _q = switch(_type) do {
      case "name": { "computer_select_name"; };
      case "id": { "computer_select_profile_uid"; };
      case "vin": { "computer_select_vin"; };
      case "plate": { "computer_select_plate"; };
};
private _id = -1;
private _ret = [format["%1:%2", _q, _query], 2] call ExternalS_fnc_ExtDBasync;
if(count _ret != 0) then {
      _id = (_ret select 0) select 0;
};
if(!isNull _player && _function != "") exitWith {
      if(_id == -1) then {
            ["STR_COMPUTER_QUERY_NOT_FOUND", true] call Client_fnc_domsg;
      } else {
            [_id] remoteExec[_function, _player];
      };
};
_id;
