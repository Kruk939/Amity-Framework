params[["_amount", 0]];
if(_amount <= 0) exitWith {};
public_jobs_var_paycheck = public_jobs_var_paycheck + _amount;
[format["You have received $%1, now you have $%2. You can collect it at center link", _amount, public_jobs_var_paycheck], true] call Client_fnc_domsg;
