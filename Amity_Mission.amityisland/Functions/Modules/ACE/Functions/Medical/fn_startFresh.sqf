private["_clothing","_clothingarray"];


//Medical Variables
medical_deadPlayer = false;
medical_istazed = false;
medical_bleedingEffect = 0;
medical_im_dead = false;
player setVariable["medical_deadPlayer",false,true];
player setVariable["medical_playerInjuries_toUpdate", [0,0,0,0,0,0,0,0,0,0,0], false];



//Items
removeAllItems player;
removeAllContainers player;
removeAllWeapons player;
removeAllAssignedItems player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;
_clothingarray = ["np_shirt_1","np_shirt_2","np_shirt_3","np_shirt_4","np_shirt_5","np_shirt_6","np_shirt_7","np_shirt_8","vvv_ropa_comun_f_1","vvv_ropa_comun_f_2","vvv_ropa_comun_f_4","vvv_ropa_comun_f_5","vvv_ropa_comun_f_6","vvv_ropa_comun_f_7","vvv_ropa_comun_f_8","vvv_ropa_comun_f_9","vvv_ropa_comun_f_10","U_BG_Guerilla3_1","U_OrestesBody"];
_clothing = _clothingarray call BIS_FNC_SELECTRANDOM;
player adduniform _clothing;
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "Itemwatch";
player additem "openrp_phone";
player assignitem "openrp_phone";
player setVariable ["tf_voiceVolume", 1, true];
player setVariable ["EMS_markedDead",nil,true];
player setVariable["EMSMedical_request_medic",nil, true];
player setVariable ["hunger", 0, true];
player setVariable ["thirst", 0, true];
player setDamage [0, true];
player setVariable ["ACE_medical_damage", 0];
player setVariable["ace_medical_bodyPartStatus",[0,0,0,0,0,0]];
player setVariable ["ACE_medical_pain", 0];

if(getNumber(missionConfigFile >> "Medical" >> "Config" >> "removeCashOnDeath") == 1) then {
      private _cash = player getVariable["cash",0];
      [_cash] call Client_fnc_removeCash;
};
//[] spawn client_fnc_GUIupdate;
[] call Client_fnc_save;
player setpos [7641.1,2555.71,0.00143623];
