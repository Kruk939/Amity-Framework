class taxi_fare {
      idd = 12000;
      movingEnable = 0;
      enableSimulation = 1;
      duration = 999999999;
      onLoad = " uiNamespace setVariable['taxi_var_display', (_this select 0)]";
      class controls {
            class FareGroup: RscControlsGroup {
            	idc = 2300;
            	x = 11.5 * GUI_GRID_W + GUI_GRID_X;
            	y = -10 * GUI_GRID_H + GUI_GRID_Y;
            	w = 17 * GUI_GRID_W;
            	h = 6 * GUI_GRID_H;
            	class Controls {
                        class text_driver: RscText {
                        	idc = 1000;
                        	text = "John raven"; //--- ToDo: Localize;
                        	x = 9 * GUI_GRID_W + GUI_GRID_X;
                        	y = 1 * GUI_GRID_H + GUI_GRID_Y;
                        	w = 8 * GUI_GRID_W;
                        	h = 1 * GUI_GRID_H;
                        	colorBackground[] = {0,0,0,0.3};
                        };
                        class text_kilometer_price: RscText {
                        	idc = 1001;
                        	text = "1/km"; //--- ToDo: Localize;
                        	x = 5.5 * GUI_GRID_W + GUI_GRID_X;
                        	y = 3 * GUI_GRID_H + GUI_GRID_Y;
                        	w = 3.5 * GUI_GRID_W;
                        	h = 1 * GUI_GRID_H;
                        	colorBackground[] = {0,0,0,0.3};
                        };
                        class text_minute_price: RscText {
                        	idc = 1002;
                        	text = "1/m"; //--- ToDo: Localize;
                        	x = 5.5 * GUI_GRID_W + GUI_GRID_X;
                        	y = 4 * GUI_GRID_H + GUI_GRID_Y;
                        	w = 3.5 * GUI_GRID_W;
                        	h = 1 * GUI_GRID_H;
                        	colorBackground[] = {0,0,0,0.3};
                        };
                        class text_kilometer_count: RscText {
                        	idc = 1010;
                        	text = "12.0 km"; //--- ToDo: Localize;
                        	x = 9.5 * GUI_GRID_W + GUI_GRID_X;
                        	y = 3 * GUI_GRID_H + GUI_GRID_Y;
                        	w = 3.5 * GUI_GRID_W;
                        	h = 1 * GUI_GRID_H;
                        	colorBackground[] = {0,0,0,0.3};
                        };
                        class text_kilometers_sum: RscText {
                        	idc = 1011;
                        	text = "23.0"; //--- ToDo: Localize;
                        	x = 13.5 * GUI_GRID_W + GUI_GRID_X;
                        	y = 3 * GUI_GRID_H + GUI_GRID_Y;
                        	w = 3.5 * GUI_GRID_W;
                        	h = 1 * GUI_GRID_H;
                        	colorBackground[] = {0,0,0,0.3};
                        };
                        class text_minutes_count: RscText {
                        	idc = 1020;
                        	text = "12.0 km"; //--- ToDo: Localize;
                        	x = 9.5 * GUI_GRID_W + GUI_GRID_X;
                        	y = 4 * GUI_GRID_H + GUI_GRID_Y;
                        	w = 3.5 * GUI_GRID_W;
                        	h = 1 * GUI_GRID_H;
                        	colorBackground[] = {0,0,0,0.3};
                        };
                        class text_minutes_sum: RscText {
                        	idc = 1021;
                        	text = "12.0"; //--- ToDo: Localize;
                        	x = 13.5 * GUI_GRID_W + GUI_GRID_X;
                        	y = 4 * GUI_GRID_H + GUI_GRID_Y;
                        	w = 3.5 * GUI_GRID_W;
                        	h = 1 * GUI_GRID_H;
                        	colorBackground[] = {0,0,0,0.3};
                        };
                        class text_sum: RscText {
                        	idc = 1030;
                        	text = "35.0"; //--- ToDo: Localize;
                        	x = 13.5 * GUI_GRID_W + GUI_GRID_X;
                        	y = 5 * GUI_GRID_H + GUI_GRID_Y;
                        	w = 3.5 * GUI_GRID_W;
                        	h = 1 * GUI_GRID_H;
                        	colorBackground[] = {0,0,0,0.3};
                        };
                        class title_minutes: RscText {
                        	idc = -1;
                        	text = "Minutes"; //--- ToDo: Localize;
                        	x = 0 * GUI_GRID_W + GUI_GRID_X;
                        	y = 4 * GUI_GRID_H + GUI_GRID_Y;
                        	w = 5 * GUI_GRID_W;
                        	h = 1 * GUI_GRID_H;
                        	colorBackground[] = {0,0,0,0.5};
                        };
                        class title_main: RscText {
                        	idc = -1;
                        	text = "Taxi Fare"; //--- ToDo: Localize;
                        	x = 0 * GUI_GRID_W + GUI_GRID_X;
                        	y = 0 * GUI_GRID_H + GUI_GRID_Y;
                        	w = 17 * GUI_GRID_W;
                        	h = 1 * GUI_GRID_H;
                        	colorBackground[] = {0,0,0,0.7};
                        };
                        class title_driver: RscText {
                        	idc = -1;
                        	text = "Driver"; //--- ToDo: Localize;
                        	x = 0 * GUI_GRID_W + GUI_GRID_X;
                        	y = 1 * GUI_GRID_H + GUI_GRID_Y;
                        	w = 9 * GUI_GRID_W;
                        	h = 1 * GUI_GRID_H;
                        	colorBackground[] = {0,0,0,0.5};
                        };
                        class title_kilometer: RscText {
                        	idc = -1;
                        	text = "Kilometers"; //--- ToDo: Localize;
                        	x = 0 * GUI_GRID_W + GUI_GRID_X;
                        	y = 3 * GUI_GRID_H + GUI_GRID_Y;
                        	w = 5 * GUI_GRID_W;
                        	h = 1 * GUI_GRID_H;
                        	colorBackground[] = {0,0,0,0.5};
                        };
                        class title_fare: RscText {
                        	idc = -1;
                        	text = "Fare"; //--- ToDo: Localize;
                        	x = 5.5 * GUI_GRID_W + GUI_GRID_X;
                        	y = 2 * GUI_GRID_H + GUI_GRID_Y;
                        	w = 3.5 * GUI_GRID_W;
                        	h = 1 * GUI_GRID_H;
                        	colorBackground[] = {0,0,0,0.5};
                        };
                        class title_summary: RscText {
                        	idc = -1;
                        	text = "Summary"; //--- ToDo: Localize;
                        	x = 0 * GUI_GRID_W + GUI_GRID_X;
                        	y = 2 * GUI_GRID_H + GUI_GRID_Y;
                        	w = 5 * GUI_GRID_W;
                        	h = 1 * GUI_GRID_H;
                        	colorBackground[] = {0,0,0,0.5};
                        };
                        class title_total: RscText {
                        	idc = -1;
                        	text = "Total"; //--- ToDo: Localize;
                        	x = 9.5 * GUI_GRID_W + GUI_GRID_X;
                        	y = 2 * GUI_GRID_H + GUI_GRID_Y;
                        	w = 7.5 * GUI_GRID_W;
                        	h = 1 * GUI_GRID_H;
                        	colorBackground[] = {0,0,0,0.5};
                        };
                        class title_sum: RscText {
                        	idc = -1;
                        	text = "Sum:"; //--- ToDo: Localize;
                        	x = 9 * GUI_GRID_W + GUI_GRID_X;
                        	y = 5 * GUI_GRID_H + GUI_GRID_Y;
                        	w = 4.5 * GUI_GRID_W;
                        	h = 1 * GUI_GRID_H;
                        	colorBackground[] = {0,0,0,0.5};
                        };
                        class block_1: RscText {
                        	idc = -1;
                        	x = 9 * GUI_GRID_W + GUI_GRID_X;
                        	y = 2 * GUI_GRID_H + GUI_GRID_Y;
                        	w = 0.5 * GUI_GRID_W;
                        	h = 3 * GUI_GRID_H;
                        	colorBackground[] = {0,0,0,0.7};
                        };
                        class block_2: RscText {
                        	idc = -1;
                        	x = 5 * GUI_GRID_W + GUI_GRID_X;
                        	y = 2 * GUI_GRID_H + GUI_GRID_Y;
                        	w = 0.5 * GUI_GRID_W;
                        	h = 3 * GUI_GRID_H;
                        	colorBackground[] = {0,0,0,0.7};
                        };
                        class block_3: RscText {
                        	idc = -1;
                        	x = 13 * GUI_GRID_W + GUI_GRID_X;
                        	y = 3 * GUI_GRID_H + GUI_GRID_Y;
                        	w = 0.5 * GUI_GRID_W;
                        	h = 2 * GUI_GRID_H;
                        	colorBackground[] = {0,0,0,0.7};
                        };
            	};
            };
      };
};
