disableSerialization;
//closing open dialog
if(count (player call TFAR_fnc_radiosList) isEqualTo 0) exitWith {};
if(dialog) then {
      closeDialog 0;
};
private _ok = createDialog "phone_main";
if(!_ok) exitWith {}; //couldn't open dialog
[] call ClientModules_Phone_fnc_setBackground;
