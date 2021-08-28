class client_showroom {
	idd = 2000;
	onUnload = "['exit'] call ClientModules_Showroom_fnc_action;";
	movingEnable = 0;
	enableSimulation = 1;
	class controlsBackground {
		class background_image: RscPicture {
			idc = 1200;
			text = "\openrp_client\images\UI\showroom";
			x = -38 * GUI_GRID_W + GUI_GRID_X;
			y = -20 * GUI_GRID_H + GUI_GRID_Y;
			w = 60 * GUI_GRID_W;
			h = 45 * GUI_GRID_H;
		};
	};
	class controls {
		// lista z pojazdami
		class listbox_list: Company_RscListBox {
			idc = 1500;
			x = -27.52 * GUI_GRID_W + GUI_GRID_X;
			y = -4.05 * GUI_GRID_H + GUI_GRID_Y;
			w = 17.5 * GUI_GRID_W;
			h = 16 * GUI_GRID_H;
			font = "PuristaMedium";
			onLBSelChanged = "['vehicle'] spawn ClientModules_Showroom_fnc_action;";
		};
		// lista kolorów
		class listbox_colors: Company_RscListBox {
			idc = 1501;
			x = -9 * GUI_GRID_W + GUI_GRID_X;
			y = -4 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 8 * GUI_GRID_H;
			font = "PuristaMedium";
			onLBSelChanged = "['color'] spawn ClientModules_Showroom_fnc_action;";
		};
		// lista wykończeń
		class listbox_materials: Company_RscListBox {
			idc = 1502;
			x = 1.5 * GUI_GRID_W + GUI_GRID_X;
			y = -4 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 8 * GUI_GRID_H;
			font = "PuristaMedium";
			onLBSelChanged = "['material'] spawn ClientModules_Showroom_fnc_action;";
		};
		class text_info: Company_RscText {
			idc = 1000;
			style = ST_MULTI;
			x = -9 * GUI_GRID_W + GUI_GRID_X;
			y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 20.5 * GUI_GRID_W;
			h = 6.5 * GUI_GRID_H;
		};

		class button_buy_player: Company_HideButton {
			idc = 1600;
			action = "['buyPlayer'] spawn ClientModules_Showroom_fnc_action;";
			x = -18 * GUI_GRID_W + GUI_GRID_X;
			y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
			font = "PuristaMedium";
		};
		class button_exit: Company_HideButton {
			idc = 1601;
			action = "['exit'] spawn ClientModules_Showroom_fnc_action;";
			x = 3 * GUI_GRID_W + GUI_GRID_X;
			y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
			font = "PuristaMedium";
		};
		class button_buy_company: Company_HideButton {
			idc = 1602;
			action = "['buyCompany'] spawn ClientModules_Showroom_fnc_action;";
			x = -27.5 * GUI_GRID_W + GUI_GRID_X;
			y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class combobox_type: RscCombo {
			idc = 2100;
			onLBSelChanged = "['combo'] spawn ClientModules_Showroom_fnc_action;";
			x = -2.6 * GUI_GRID_W + GUI_GRID_X;
			y = -6.53 * GUI_GRID_H + GUI_GRID_Y;
			w = 14.2 * GUI_GRID_W;
			h = 1.1 * GUI_GRID_H;
		};
	};
};
