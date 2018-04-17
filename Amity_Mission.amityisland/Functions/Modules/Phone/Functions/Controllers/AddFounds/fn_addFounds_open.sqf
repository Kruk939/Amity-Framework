disableSerialization;
//closing open dialog
if(dialog) then {
      closeDialog 0;
};
private _ok = createDialog "phone_add_founds";
if(!_ok) exitWith {}; //couldn't open dialog
[] call ClientModules_Phone_fnc_setBackground;
private _plans = [
      100,
      50,
      25,
      10,
      5
];
{
      private _index = lbAdd [1500, format["Plan: $%1", _x]];
      lbSetData [1500, _index, str(_x)];
} foreach _plans;
