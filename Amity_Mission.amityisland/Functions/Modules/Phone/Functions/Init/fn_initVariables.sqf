phone_var_data = [];
phone_var_numbers = [];
phone_var_contacts = [];
phone_var_lastFreq = "";
phone_var_current_sound = objNull;

phone_var_caller = objNull;

//private variables
player setVariable["phone_in_call", false];
player setVariable["phone_calling", false];
player setVariable["phone_disabled", false];
player setVariable["phone_call_group", []];

//public variables
player setVariable["phone_number", ""];
player setVariable["phone_current_freq", ""];



tf_west_radio_code = "";
tf_east_radio_code = tf_west_radio_code;
tf_guer_radio_code = tf_west_radio_code;
tf_civ_radio_code = tf_west_radio_code;
