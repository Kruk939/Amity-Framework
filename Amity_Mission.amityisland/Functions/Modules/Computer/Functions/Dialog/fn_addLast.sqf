params["_params", "_function"];
if(isNil _function) then { _function = _fnc_scriptNameParent; };
if(computer_var_lastOpened) then {
      computer_var_lastOpened = false;
      computer_var_lastIndex = computer_var_lastIndex + 2;
} else {
      if(computer_var_lastIndex > 0) then {
            private _i = 0;
            private _count = count computer_var_lastDialog;
            for [{}, {_i < computer_var_lastIndex}, {_i = _i + 1}] do {
                computer_var_lastDialog deleteAt (_count - _i - 1);
            };
      };
      computer_var_lastIndex = 0;
};
computer_var_lastDialog pushBack [_params, _function];
hint format["Index: %1 | Last: %2\n%3", computer_var_lastIndex, computer_var_lastOpened, computer_var_lastDialog];
