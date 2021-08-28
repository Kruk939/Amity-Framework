params[["_type", ""]];
private _ret = [];
if(_type == "" || player getVariable["faction_id", -1] == -1) exitWith { _ret; };
_type = toLower(_type);
private _index = switch(_type) do {
      case "view": { 2; };
      case "give": { 3; };
      case "revoke": { 4; };
      default { -1; };
};
if(_index == -1) exitWith { _ret; };
private _access = player getVariable["faction_access_level", -1];
{
      private _level = _x select _index;
      if(typeName _level != "OBJECT") then {
            if(_level <= _access) then {
                  _ret pushBack (_x select 1);
            };
      };
} forEach licenses_var_faction;
_ret;
