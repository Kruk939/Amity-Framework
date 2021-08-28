params[["_amount", 0]];
if(_amount == 0) exitWith {};
public_jobs_var_paycheck = public_jobs_var_paycheck + _amount;
if(_amount <= 0) then {
      [["STR_PUBLIC_JOBS_PAYCHECK_FINE", 0 - _amount, public_jobs_var_paycheck], true] call Client_fnc_domsg;

} else {
      [["STR_PUBLIC_JOBS_PAYCHECK_RECEIVED", _amount, public_jobs_var_paycheck], true] call Client_fnc_domsg;
};
