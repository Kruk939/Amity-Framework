params[["_vehicle", objNull], ["_plate", ""], ["_type", ""]];
if(isNull _vehicle) exitWith {};
private _allowedChars = "abcdefghijklmnopqrstuvwxyz0123456789";
private _licenseSelections = switch(_type) do {
      case "ivory": { [4,6,8,10,12,14,16] };
      case "jonzie": { [1,2,3,4,5,6,7] };
      default { [] };
};
if(_plate == "") then {
      _plate = [7, _allowedChars] call Client_fnc_generateString;
};

private _licenseArr = _plate splitString "";
private _allowedArr = _allowedChars splitString "";
_licenseArr resize 7;
{
      private _licenseChar = _licenseArr select _forEachIndex;
      if(isNil "_licenseChar") then { _licenseChar = ""; };
      private _img = "";
      if(toLower(_licenseChar) IN _allowedArr) then {
            _img = format["ivory_data\license\%1.paa", toLower(_licenseChar)];
      };
      _vehicle setObjectTextureGlobal [_x, _img];
} forEach _licenseSelections;
