amity_var_events = [];
if(isNil "amity_var_actions") then { amity_var_actions = []; };
amity_var_faction = [];
amity_var_keys = [];
amity_var_vehicles = [];
amity_var_getVariable_receiving = false;
amity_var_getVariable_lastReceived = "";
amity_var_attachedVehicle = objNull;
amity_var_attachedObject = objNull;
amity_var_cash_last_action = time - getNumber(missionConfigFile >> "Amity" >> "Setup" >> "timeLock");