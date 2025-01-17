private _array = [
			// Company Garage
      [
            ["ARP_GARAGE_CAR","Car Garage", "", {["Car"] call Client_fnc_garage_open;},{isNull amity_var_attachedVehicle},{},"","screenloc",2],
            ["class",["openrp_vendor_garage", 0, ["ACE_MainActions"]]]
      ],
      [
            ["ARP_GARAGE_SHIP","Ship Garage", "", {["Ship"] call Client_fnc_garage_open;},{isNull amity_var_attachedVehicle},{},"","screenloc",2],
            ["class",["openrp_vendor_boatshop", 0, ["ACE_MainActions"]]]
      ],
      [
            ["ARP_GARAGE_AIR","Air Garage", "", {["Air"] call Client_fnc_garage_open;},{isNull amity_var_attachedVehicle},{},"","screenloc",2],
            ["class",["openrp_vendor_airshop", 0, ["ACE_MainActions"]]]
      ],
      [
            ["ARP_FACTION_START","Start Job", "", {[] spawn Client_fnc_faction_sign_open;},{count amity_var_faction == 0},{},"","screenloc",2],
            ["class",["openrp_vendor_jobs", 0, ["ACE_MainActions"]]]
      ],
      [
            ["ARP_FACTION_STOP","Stop Job", "", {[] spawn Client_fnc_stopWorking;},{count amity_var_faction != 0},{},"","screenloc",2],
            ["class",["openrp_vendor_jobs", 0, ["ACE_MainActions"]]]
      ],
      [
            ["ARP_FACTION_CREATE","Create Faction", "", { [] spawn Client_fnc_faction_create_open; },{true},{},"","screenloc",2],
            ["class",["openrp_vendor_jobs", 0, ["ACE_MainActions"]]]
      ],
      [
            ["ARP_FACTION_VIEW","Manage Faction", "", { [player getVariable["faction_id", -1]] spawn Client_fnc_faction_view_open; },{count amity_var_faction != 0},{},"","screenloc",2],
            ["class",["openrp_vendor_jobs", 0, ["ACE_MainActions"]]]
      ],
      [
            ["ARP_ATM_1","ATM", "", {[] call Client_fnc_atm_open;},{true},{},"",[-0.0722656,-0.130371,0.633401],3],
            ["class",["Land_mattaust_ATM", 0, []]]
      ],
      [
            ["ARP_ATM_2","ATM", "", {[] call Client_fnc_atm_open;},{true},{},"",[5.44043,-10.2639,2.26464],3],
            ["class",["Land_Centrelink", 0, []]]
      ],
      [
            ["ARP_MenuBank","Bank", "", {true},{true},{},"","",4],
            ["class",["Land_Wallet_01_F", 0, []]]
      ],
      [
            ["ARP_ATM_2","ATM", "", {[] call Client_fnc_atm_open;},{},{},"","",4],
            ["class",["Land_Wallet_01_F", 0, ["ARP_MenuBank"]]]
      ],
      [
            ["ARP_ATM_FACTION","Faction ATM", "", {[] call Client_fnc_faction_atm_open;},{ (player getVariable["faction_id", -1]) != -1},{},"","",4],
            ["class",["Land_Wallet_01_F", 0, ["ARP_MenuBank"]]]
      ],
	[
		["ARP_VEHICLE_DROP","Drop Car", "", {[cursorTarget] spawn Client_fnc_detachVehicle;},{count attachedObjects player > 0 && !isNull amity_var_attachedVehicle}],
		["class",["Civilian", 1, ["ACE_SelfActions"],true]]
	],
      [
		["ACE_Medical_CPR","Wake him/her up", "",{[_target] spawn ClientModules_ACE_fnc_cprKit;}, {!(_target getVariable["medical_revive_active", false]) && (_target getVariable["ACE_isUnconscious", false]) && ((["CG_ATF_First_Aid_Kit_i"] call Client_fnc_countItems) != 0)},{},"","",5],
		["class",["Civilian", 0, ["ACE_Torso"],true]]

      ],
      [
		["ACE_Medical_revive","Revive", "",{[_target] spawn ClientModules_ACE_fnc_defibrylator; }, {!(_target getVariable["medical_revive_active", false]) && (_target getVariable["ACE_isUnconscious", false]) && ((["CG_ATF_Revival_Kit_i"] call Client_fnc_countItems) != 0) && ([player] call ace_medical_fnc_isMedic)},{},"","",5],
		["class",["Civilian", 0, ["ACE_Torso"],true]]

      ],
      [
		["ARP_KEYS_GIVE","Give keys", "",{[_target] call Client_fnc_give_keys_open; }, {true},{},"","",5],
		["class",["Civilian", 0, ["ACE_Torso"],true]]
      ],
	[
		["ARP_FACTION_ADD","Add to Faction", "", { [_target] call Client_fnc_faction_addMember; },{(player getVariable["faction_id", -1]) != -1 && (_target getVariable["profile_id", -1]) != -1}],
		["class",["Civilian", 0, ["ACE_Torso"],true]]
	],
      [
            ["ARP_OBJECT_DETACH",  "Detach object", "", {[] call Client_fnc_detachObject}, {!isNull amity_var_attachedObject && ((count attachedObjects player) > 0)}, {}, "", "", 5],
            ["object",[player, 1, ["ACE_SelfActions"]]]
      ],
      [
            ["ARP_OBJECT_MENU", "Object", "", {}, {true}],
            ["class",["ThingX", 0, [],true]]
      ],
      [
            ["ARP_OBJECT_MENU", "Object", "", {}, {true}, {}],
            ["class",["Building", 0, [],true]]
      ],
      [
            ["ARP_HOSTPIAL_FULL_HEAL","Full Heal", "", {[] call ClientModules_ACE_fnc_selfHeal;},{private _ret = []; { if((_x getVariable["Ace_medical_medicClass", 0]) != 0) then { _ret pushBack _x; };} forEach allPlayers; (count _ret == 0)},{},"","screenloc",2],
            ["class",["openrp_vendor_EMSsignin", 0, ["ACE_MainActions"]]]
      ]

];
_array call Client_fnc_addAction;
