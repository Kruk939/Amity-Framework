class house_manage {
	idd = 1110000;
	class controlsBackground {
		class title_main: RscText {
			idc = -1;
			text = $STR_HOUSING_DIALOG_MANAGE_TITLE; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
			w = 40 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.8};
		};
		class title_modules: RscText {
			idc = -1;
			text = $STR_HOUSING_DIALOG_MANAGE_MODULES; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 12.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class title_furnitures: RscText {
			idc = -1;
			text = $STR_HOUSING_DIALOG_MANAGE_FURNITURES; //--- ToDo: Localize;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 27 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class title_modules_info: RscText {
			idc = -1;
			text = $STR_HOUSING_DIALOG_INFORMATION; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 12.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class title_module_access: RscText {
			idc = -1;
			style = ST_RIGHT;
			text = $STR_HOUSING_DIALOG_MANAGE_ACCESS; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 18 * GUI_GRID_H + GUI_GRID_Y;
			w = 6 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class title_furniture_not_spawned: RscText {
			idc = -1;
			text = $STR_HOUSING_DIALOG_MANAGE_NOT_SPAWNED; //--- ToDo: Localize;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class title_furniture_spawned: RscText {
			idc = -1;
			text = $STR_HOUSING_DIALOG_MANAGE_SPAWNED; //--- ToDo: Localize;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class title_furnitures_actions: RscText {
			idc = -1;
			text = $STR_HOUSING_DIALOG_MANAGE_ACTIONS; //--- ToDo: Localize;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 13 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class block_1: RscText {
			idc = -1;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 1 * GUI_GRID_H + GUI_GRID_Y;
			w = 40 * GUI_GRID_W;
			h = 0.25 * GUI_GRID_H;
			colorBackground[] = {0.043,0.486,0.769,1};
		};
		class block_2: RscText {
			idc = -1;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 14 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 0.25 * GUI_GRID_H;
			colorBackground[] = {0.043,0.486,0.769,1};
		};
		class block_3: RscText {
			idc = -1;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 27 * GUI_GRID_W;
			h = 0.25 * GUI_GRID_H;
			colorBackground[] = {0.043,0.486,0.769,1};
		};
	};
	class controls {
		class text_module_info: RscText {
			idc = 1000;
			style = ST_MULTI;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 12.5 * GUI_GRID_W;
			h = 6.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class edit_module_access: RscEdit {
			idc = 1400;
			onKeyDown = " ['MOD_ACCESS'] call ClientModules_Housing_fnc_manage_action; ";
			text = "";
			x = 6 * GUI_GRID_W + GUI_GRID_X;
			y = 18 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class list_modules: RscListbox {
			idc = 1500;
			onLbSelChanged = " ['LB_MOD_SEL'] call ClientModules_Housing_fnc_manage_action; ";
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 12.5 * GUI_GRID_W;
			h = 7.5 * GUI_GRID_H;
			colorText[] = {0,0,0,0.4};
		};
		class listbox_furnitures_not_spawned: RscListbox {
			idc = 1501;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 4 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 7.5 * GUI_GRID_H;
			colorText[] = {0,0,0,0.4};
		};
		class listbox_furnitures_spawned: RscListbox {
			idc = 1502;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 4 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 7.5 * GUI_GRID_H;
			colorText[] = {0,0,0,0.4};
		};
		class button_module_action: RscButton {
			idc = 1600;
			action = "['MOD_ACTION'] call ClientModules_Housing_fnc_manage_action";
			text = $STR_HOUSING_DIALOG_BUY; //--- ToDo: Localize;
			x = 6 * GUI_GRID_W + GUI_GRID_X;
			y = 19 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class button_furinture_spawn: RscButton {
			idc = 1601;
			text = $STR_HOUSING_DIALOG_MANAGE_SPAWN; //--- ToDo: Localize;
			x = 19.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class button_furinture_despawn: RscButton {
			idc = 1602;
			text = $STR_HOUSING_DIALOG_MANAGE_DESPAWN; //--- ToDo: Localize;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class button_spawn_cargo: RscButton {
			idc = 1603;
			text = $STR_HOUSING_DIALOG_MANAGE_SPAWN_ALL_CARGO; //--- ToDo: Localize;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class button_despawn_all: RscButton {
			idc = 1604;
			text = $STR_HOUSING_DIALOG_MANAGE_DESPAWN_ALL_CARGO; //--- ToDo: Localize;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 16 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class button_set_sell: RscButton {
			idc = 1605;
			text = $STR_HOUSING_DIALOG_MANAGE_SET_SELL; //--- ToDo: Localize;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class button_delete_furniture: RscButton {
			idc = 1606;
			text = $STR_HOUSING_DIALOG_MANAGE_DELETE; //--- ToDo: Localize;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class button_exit: RscButton {
			idc = 1607;
			text = $STR_EXIT; //--- ToDo: Localize;
			x = 34 * GUI_GRID_W + GUI_GRID_X;
			y = 24 * GUI_GRID_H + GUI_GRID_Y;
			w = 6 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
	};
};
