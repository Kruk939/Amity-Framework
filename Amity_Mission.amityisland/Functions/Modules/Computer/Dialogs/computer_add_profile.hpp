class computer_add_profile {
      idd = 15004;
      class controls {
		class text_name: RscText {
			idc = 1000;
			text = "John Raven"; //--- ToDo: Localize;
			x = 18.5 * GUI_GRID_W + GUI_GRID_X;
			y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class edit_reason: RscEdit {
			idc = 1400;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 20 * GUI_GRID_W;
			h = 7.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class combo_level: RscCombo {
			idc = 2100;
			x = 18.5 * GUI_GRID_W + GUI_GRID_X;
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class button_add_close: RscButton {
			idc = 1600;
			text = $STR_COMPUTER_CASE_ADD_CLOSE; //--- ToDo: Localize;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 13.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_add: RscButton {
			idc = 1601;
			text = $STR_ADD; //--- ToDo: Localize;
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 13.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_exit: RscButton {
			idc = 1602;
			text = $STR_ABORT; //--- ToDo: Localize;
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 13.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class title_main: RscText {
			idc = -1;
			text = $STR_COMPUTER_CASE_ADD_PROFILE_TITLE; //--- ToDo: Localize;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
			w = 20 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.8};
		};
		class title_plate: RscText {
			idc = -1;
			text = $STR_COMPUTER_NAME_SURNAME; //--- ToDo: Localize;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 8.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class title_poziom: RscText {
			idc = -1;
			text = $STR_COMPUTER_WANTED_LEVEL; //--- ToDo: Localize;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 8.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class title_reason: RscText {
			idc = -1;
			text = $STR_COMPUTER_WANTED_REASON; //--- ToDo: Localize;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 20 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
	};
};
