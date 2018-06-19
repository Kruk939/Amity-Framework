class house_buy {
	idd = 1110001;
	class controlsBackground {
		class title_main: RscText {
			idc = -1;
			text = $STR_HOUSING_DIALOG_BUY_TITLE; //--- ToDo: Localize;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
			w = 20 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.8};
		};
		class block_1: RscText {
			idc = -1;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 1 * GUI_GRID_H + GUI_GRID_Y;
			w = 20 * GUI_GRID_W;
			h = 0.25 * GUI_GRID_H;
			colorBackground[] = {0.043,0.486,0.769,1};
		};
		class title_owner: RscText {
			idc = -1;
			style = ST_RIGHT;
			text = $STR_HOUSING_DIALOG_OWNER; //--- ToDo: Localize;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 8.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class title_price: RscText {
			idc = -1;
			style = ST_RIGHT;
			text = $STR_HOUSING_DIALOG_PRICE; //--- ToDo: Localize;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 8.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class title_info: RscText {
			idc = -1;
			text = $STR_HOUSING_DIALOG_INFORMATION; //--- ToDo: Localize;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 20 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
	};
	class controls {
		class text_owner: RscText {
			idc = 1000;
			text = ""; //--- ToDo: Localize;
			x = 18.5 * GUI_GRID_W + GUI_GRID_X;
			y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class text_price: RscText {
			idc = 1001;
			x = 18.5 * GUI_GRID_W + GUI_GRID_X;
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class text_info: RscText {
			idc = 1002;
			style = ST_MULTI;
			text = ""; //--- ToDo: Localize;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 20 * GUI_GRID_W;
			h = 9.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class button_buy: RscButton {
			idc = 1600;
			text = $STR_HOUSING_DIALOG_BUY; //--- ToDo: Localize;
			x = 12.5 * GUI_GRID_W + GUI_GRID_X;
			y = 15 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class button_faction: RscButton {
			idc = 1601;
			text = $STR_HOUSING_DIALOG_BUY_FACTION; //--- ToDo: Localize;
			x = 18.5 * GUI_GRID_W + GUI_GRID_X;
			y = 15 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class button_exit: RscButton {
			idc = 1602;
			text = $STR_EXIT; //--- ToDo: Localize;
			x = 24.5 * GUI_GRID_W + GUI_GRID_X;
			y = 15 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
	};
};
