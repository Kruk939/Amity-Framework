computer_var_messages = [];
computer_var_dangerLevel = 0;
publicVariable "computer_var_dangerLevel";

if(!isNil "ServerModules_Permissions_fnc_insert") then {
      ["computer_case_view", "[Computer] View Case"] call ServerModules_Permissions_fnc_insert;
      ["computer_case_add", "[Computer] Add Case"] call ServerModules_Permissions_fnc_insert;
      ["computer_case_update", "[Computer] Edit Case"] call ServerModules_Permissions_fnc_insert;
      ["computer_case_close", "[Computer] Close Case"] call ServerModules_Permissions_fnc_insert;
      ["computer_message_add", "[Computer] Add Message"] call ServerModules_Permissions_fnc_insert;
      ["computer_danger_level_change", "[Computer] Danger Level Change"] call ServerModules_Permissions_fnc_insert;
      ["computer_personal_view", "[Computer] View Personal Files"] call ServerModules_Permissions_fnc_insert;
};
