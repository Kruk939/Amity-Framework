class Resources {
	class Items {
		Pickaxe = "cg_pickaxe";
		Hatchet = "cg_hatchet";
		Drill = "cg_pickaxe";
	};
	class Ores {
		Oil[] = {"openrp_oil_barrel", 20};
		Metal[] = {
			{"openrp_copper_ore", 4},
			{"openrp_iron_ore", 15},
			{"openrp_gold_ore", 1}
		};
		Sand[] = {"openrp_sand", 40};
		Wood[] = {"openrp_woodlog", 30};
	};
	class Process {
		Oil[] = {"openrp_oil_barrel", "openrp_oil_canister", 2};
		Metal[] = {
			{"openrp_copper_ore", "openrp_copper_ingot", 3},
			{"openrp_iron_ore", "openrp_iron_ingot", 4},
			{"openrp_gold_ore", "openrp_gold_ingot", 2}
		};
		Wood[] = {"openrp_woodlog", "openrp_wood", 5};
	};
	class Fishing {
		Rods[] = {
			"vvv_fishing_rod",
			"epic_fishing_rod",
			"platinum_fishing_rod",
			"legendary_fishing_rod",
			"gold_fishing_rod"
		};
		Bait = "cebos";
		StandardFish[] = {
			"Fish_Tuna_1",
			"Fish_Tuna_2",
			"Fish_Tuna_3",
			"Fish_Tuna_4",
			"Fish_Tuna_5",
			"Fish_Tuna_6",
			"Fish_Mackerel_1",
			"Fish_Mackerel_2",
			"Fish_Mackerel_3",
			"Fish_Mackerel_4",
			"Fish_Mackerel_5",
			"Fish_Mackerel_6"
		};
		RareFish[] = {
			"Fish_Mackerel_7",
			"Fish_Tuna_7",
			"Fish_Trout_Rare",
			"Fish_Shark_Rare"
		};
		Chances[] = {
			{"vvv_fishing_rod", 1},
			{"epic_fishing_rod", 5},
			{"platinum_fishing_rod", 10},
			{"gold_fishing_rod", 25},
			{"legendary_fishing_rod", 50}
		};
		FishClass = "vvv_anzuelo";
		Sounds[] = {
			"vvv_fishingrod\sounds\wind2.ogg",
			"vvv_fishingrod\sounds\splash.ogg"
		};
		Animations[] = {
			"AwopPercMstpSgthWrflDnon_start1",
			"AmovPercMstpSrasWrflDnon_AmovPercMstpSrasWrflDnon_gear",
			"CRPTHSForwardStandLowered"
		};
	}
};
