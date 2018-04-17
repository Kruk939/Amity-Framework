disableSerialization;
//closing open dialog
if(dialog) then {
      closeDialog 0;
};
private _ok = createDialog "phone_messages";
if(!_ok) exitWith {}; //couldn't open dialog
[] call ClientModules_Phone_fnc_setBackground;
private _current_number = player getVariable ["phone_number",""];
private _messages = [_current_number] call ClientModules_Phone_fnc_getMessages;

{
      _x params["_message", "_sender_number", "_receiver_number"];
      private _text = "";
      if(_sender_number == _current_number) then {
            //send message
            private _name = [_receiver_number] call ClientModules_Phone_fnc_getNumber_name;
            _text = format["To: %1", _name];
      } else {
            //received message
            private _name = [_sender_number] call ClientModules_Phone_fnc_getNumber_name;
            _text = format["From: %1", _name];
      };
      private _index = lbAdd [1500, _text];
      lbSetData [1500, _index, str(_x)];
} foreach _messages;
if((count _messages) != 0) then {
      lbSetCurSel [1500, 0];
};
