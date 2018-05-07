if(public_jobs_var_paycheck <= 0) exitWith {
      public_jobs_var_paycheck = 0;
      ["STR_PUBLIC_JOBS_PAYCHECK_NOTHING_TO_COLLECT", true] call Client_fnc_domsg;
};
[public_jobs_var_paycheck] call Client_fnc_addCash;
[["STR_PUBLIC_JOBS_PAYCHECK_TAKE", public_jobs_var_paycheck], true] call Client_fnc_domsg;
public_jobs_var_paycheck = 0;
