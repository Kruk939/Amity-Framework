params[["_number", ""]];
private _current_number = player getVariable ["phone_number", ""];
if(_number == _current_number) then { _number = ""; };
disableSerialization;
//closing open dialog
if(dialog) then {
      closeDialog 0;
};
private _ok = createDialog "phone_message_new";
if(!_ok) exitWith {}; //couldn't open dialog
[] call ClientModules_Phone_fnc_setBackground;
ctrlsetText [1400, _number];
