private _display = findDisplay 1000;
if(isNull _display) exitWith {};
private _index = lbCurSel 1500;
if(_index > -1) then {
      private _data = call compile (lbData[1500, _index]);
      [_data] call Client_fnc_loadProfile;
};
