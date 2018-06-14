permissions_var_inited = false;
permissions_var_all = [];
[] call ServerModules_Permissions_fnc_load;
permissions_var_inited = true;

["permissions_view", "[Permissions] View"] call ServerModules_Permissions_fnc_insert;
["permissions_manage", "[Permissions] Manage"] call ServerModules_Permissions_fnc_insert;
["faction_manage", "[Faction] Manage"] call ServerModules_Permissions_fnc_insert;
["faction_atm_withdraw", "[Faction] Atm Withdraw"] call ServerModules_Permissions_fnc_insert;
["faction_atm_payin", "[Faction] Atm Payin"] call ServerModules_Permissions_fnc_insert;
["faction_atm_transfer", "[Faction] Atm Transfer"] call ServerModules_Permissions_fnc_insert;
["faction_garage_update", "[Garage] Edit Garage"] call ServerModules_Permissions_fnc_insert;
["faction_garage_view", "[Garage] View Garage"] call ServerModules_Permissions_fnc_insert;
["faction_garage_buy", "[Garage] Buy Vehicle"] call ServerModules_Permissions_fnc_insert;
["faction_member_add", "[Faction] Member Add"] call ServerModules_Permissions_fnc_insert;
["faction_member_update", "[Faction] Member Edit"] call ServerModules_Permissions_fnc_insert;
["faction_member_remove", "[Faction] Member Remove"] call ServerModules_Permissions_fnc_insert;
["faction_members_view", "[Faction] Members View"] call ServerModules_Permissions_fnc_insert;
["faction_member_view", "[Faction] Member View"] call ServerModules_Permissions_fnc_insert;
