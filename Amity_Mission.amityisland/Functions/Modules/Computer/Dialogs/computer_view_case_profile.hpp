class computer_view_case_profile {
      idd = 15006;
      class controls {
		class text_id: RscText {
			idc = 1000;
			text = "123"; //--- ToDo: Localize;
			x = 18.5 * GUI_GRID_W + GUI_GRID_X;
			y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class text_name: RscText
		{
			idc = 1001;
			text = "John Raven"; //--- ToDo: Localize;
			x = 18.5 * GUI_GRID_W + GUI_GRID_X;
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class text_reason: RscText {
			idc = 1002;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 7 * GUI_GRID_H + GUI_GRID_Y;
			w = 20 * GUI_GRID_W;
			h = 7.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class button_save: RscButton {
			idc = 1600;
			text = $STR_COMPUTER_CASE_SAVE; //--- ToDo: Localize;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 15 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_close_case: RscButton {
			idc = 1601;
			text = $STR_COMPUTER_CASE_CLOSE; //--- ToDo: Localize;
			x = 16 * GUI_GRID_W + GUI_GRID_X;
			y = 15 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_exit: RscButton {
			idc = 1602;
			text = $STR_ABORT; //--- ToDo: Localize;
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 15 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class combo_level: RscCombo {
			idc = 2100;
			x = 18.5 * GUI_GRID_W + GUI_GRID_X;
			y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class title_main: RscText {
			idc = -1;
			text = $STR_COMPUTER_CASE_VIEW_PROFILE_TITLE; //--- ToDo: Localize;
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
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 8.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class title_poziom: RscText {
			idc = -1;
			text = $STR_COMPUTER_WANTED_LEVEL; //--- ToDo: Localize;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 8.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class title_reason: RscText {
			idc = -1;
			text = $STR_COMPUTER_WANTED_REASON; //--- ToDo: Localize;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 6 * GUI_GRID_H + GUI_GRID_Y;
			w = 20 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class title_id: RscText {
			idc = -1;
			text = $STR_COMPUTER_WANTED_ID; //--- ToDo: Localize;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 8.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
	};
};
