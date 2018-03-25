private _array = [
			// Company Garage
      [
            ["ARP_GARAGE","Garage", "", {[] call Client_fnc_garage_open;},{isNull amity_var_attachedVehicle},{},"","screenloc",2],
            ["class",["openrp_vendor_garage", 0, ["ACE_MainActions"]]]
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
            ["ARP_FACTION_VIEW","Manage Faction", "", { [] spawn Client_fnc_faction_view_open; },{count company_var_active_data != 0},{},"","screenloc",2],
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
            ["ARP_ATM_2","ATM", "", {[] call Client_fnc_atm_open;},{},{},"","",4],
            ["class",["Land_Wallet_01_F", 0, ["ORP_MenuBank"]]]
      ],
	[
		["ARP_VEHICLE_DROP","Drop Car", "", {[cursorTarget] spawn Client_fnc_detachVehicle;},{count attachedObjects player > 0 && !isNull amity_var_attachedVehicle}],
		["class",["Civilian", 1, ["ACE_SelfActions"],true]]
	]

];
_array call Client_fnc_addAction;
