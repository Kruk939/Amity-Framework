params[["_amount", 0], ["_type", "SUB"]];
if(_amount <= 0 || !(_type IN ["SUB", "ADD"])) exitWith {};
private _number = player getVariable["phone_active_number", []];
if((count _number) == 0) exitWith {};
if(_type == "SUB") then {
      _amount = 0 - _amount;
};
private _balance = (_number select 3) + _amount;
_number set[3, _balance];
player setVariable["phone_active_number", _number];
{
      if((_x select 0) == (_number select 0)) exitWith {
            _x set[3, _balance];
      };
} forEach phone_var_numbers;
_balance;
