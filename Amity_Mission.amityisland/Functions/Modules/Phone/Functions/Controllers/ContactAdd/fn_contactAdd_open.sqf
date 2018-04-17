params[["_number", ""], ["_name", ""]];
disableSerialization;
//closing open dialog
if(dialog) then {
      closeDialog 0;
};
private _ok = createDialog "phone_contactsadd";
if(!_ok) exitWith {}; //couldn't open dialog
[] call ClientModules_Phone_fnc_setBackground;
ctrlSetText [1401, _number];
ctrlSetText [1400, _name];
