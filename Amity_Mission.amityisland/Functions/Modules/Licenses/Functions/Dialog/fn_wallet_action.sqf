params[["_type", ""]];
if(_type == "LB") exitWith {
      private _index = lbCurSel 1500;
      if(_index == -1) exitWith {};
      private _id = parseNumber(lbData[1500, _index]);
      if(_id == -1) exitWith {};
      private _license = [];
      {
            if(_id == (_x select 0)) exitWith { _license = _x; };
      } forEach  licenses_var_profile;
      if(count _license == 0) exitWith {};
      _license  params["_id", "_license_id", "_description", ""];
      private _l = [_license_id] call ClientModules_Licenses_fnc_get;
      _l params["", "", "_name"];
      private _text = format[localize "STR_LICENSES_WALLET_DESCRIPTION", _id, _name, _description];
      ctrlSetText[1000, _text];
};
