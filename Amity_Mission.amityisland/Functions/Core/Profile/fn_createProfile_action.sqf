params[["_type", ""]];
if(_type == "CREATE") exitWith {
      private _first_name = ctrlText 1400;
      private _last_name = ctrlText 1401;
      private _index = lbCurSel 2100;
      private _gender = parseNumber(lbData[2100, _index]);
      [player, [_first_name, _last_name, _gender]] remoteExec ["Server_fnc_createProfile", 2];
      ctrlEnable[1601, false];
};
if(_type == "EXIT") exitWith {

};
