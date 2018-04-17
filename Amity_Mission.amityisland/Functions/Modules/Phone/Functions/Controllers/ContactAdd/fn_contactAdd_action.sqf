disableSerialization;
if(!dialog) exitWith {};
params[["_type", ""]];
switch(_type) do {
      case "add": {
            private _name = ctrlText 1400;
            private _number = ctrlText 1401;
            private _correct = [_number] call ClientModules_Phone_fnc_checkNumber;
            if(_correct) then {
                  private _add = [_name, _number] call ClientModules_Phone_fnc_addContact;
                  if(_add) then {
                        hint "Contact updated";
                  } else {
                        hint "Contact added";
                  };
                  [] call ClientModules_Phone_fnc_contacts_open;
            } else {
                  hint "Number is not correct!";
            };
      };
};
