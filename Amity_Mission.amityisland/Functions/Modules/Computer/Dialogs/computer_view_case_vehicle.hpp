class computer_view_case_vehicle {
      idd = 15007;
      class controlsBackground {
		class ComputerBackground: Tbackground_police_computer {};
      };
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
            class text_plate: RscText {
            	idc = 1001;
            	text = "ZSXQF24"; //--- ToDo: Localize;
            	x = 18.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 3 * GUI_GRID_H + GUI_GRID_Y;
            	w = 11.5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
            class text_reason: RscText {
            	idc = 1002;
                  style = ST_MULTI;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 20 * GUI_GRID_W;
			h = 7.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
		class text_opened_by: RscText {
			idc = 1003;
			x = 18.5 * GUI_GRID_W + GUI_GRID_X;
			y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class text_closed_by: RscText {
			idc = 1004;
			x = 18.5 * GUI_GRID_W + GUI_GRID_X;
			y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
            class combo_level: RscCombo {
            	idc = 2100;
			x = 18.5 * GUI_GRID_W + GUI_GRID_X;
			y = 6 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
            };
		class button_save: RscButton {
			idc = 1600;
                  action = " ['SAVE'] call ClientModules_Computer_fnc_computer_view_case_vehicle_action; ";
			text = $STR_COMPUTER_CASE_SAVE; //--- ToDo: Localize;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 18 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_close_case: RscButton {
			idc = 1601;
                  action = " ['CLOSE'] call ClientModules_Computer_fnc_computer_view_case_vehicle_action; ";
			text = $STR_COMPUTER_CASE_CLOSE; //--- ToDo: Localize;
			x = 16 * GUI_GRID_W + GUI_GRID_X;
			y = 18 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_exit: RscButton {
			idc = 1602;
                  action = " [] call ClientModules_Computer_fnc_openLast; ";
			text = $STR_ABORT; //--- ToDo: Localize;
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 18 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class title_opened_by: RscText {
			idc = -1;
                  style = ST_RIGHT;
			text = $STR_COMPUTER_OPENED_BY; //--- ToDo: Localize;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 8.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class title_closed_by: RscText {
			idc = -1;
                  style = ST_RIGHT;
			text = $STR_COMPUTER_CLOSED_BY; //--- ToDo: Localize;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 8.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
            class title_main: RscText {
            	idc = -1;
            	text = $STR_COMPUTER_CASE_VIEW_VEHICLE_TITLE; //--- ToDo: Localize;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 0 * GUI_GRID_H + GUI_GRID_Y;
            	w = 20 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.8};
            };
            class title_plate: RscText {
            	idc = -1;
                  style = ST_RIGHT;
            	text = $STR_COMPUTER_PLATE; //--- ToDo: Localize;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 3 * GUI_GRID_H + GUI_GRID_Y;
            	w = 8.5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.6};
            };
            class title_level: RscText {
            	idc = -1;
                  style = ST_RIGHT;
            	text = $STR_COMPUTER_WANTED_LEVEL; //--- ToDo: Localize;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 6 * GUI_GRID_H + GUI_GRID_Y;
			w = 8.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.6};
            };
            class title_reason: RscText {
            	idc = -1;
            	text = $STR_COMPUTER_WANTED_REASON; //--- ToDo: Localize;
                  x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 9 * GUI_GRID_H + GUI_GRID_Y;
			w = 20 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
            };
            class title_id: RscText {
            	idc = -1;
                  style = ST_RIGHT;
            	text = $STR_COMPUTER_WANTED_ID; //--- ToDo: Localize;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 8.5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.6};
            };
      };
};
