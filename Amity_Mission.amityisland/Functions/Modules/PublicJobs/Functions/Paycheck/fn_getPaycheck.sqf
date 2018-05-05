if(public_jobs_var_paycheck <= 0) exitWith {
      public_jobs_var_paycheck = 0;
      ["There is nothing to collect", true] call Client_fnc_domsg;
};
[public_jobs_var_paycheck] call Client_fnc_addCash;
[format["You have collected $%1", public_jobs_var_paycheck], true] call Client_fnc_domsg;
public_jobs_var_paycheck = 0;
