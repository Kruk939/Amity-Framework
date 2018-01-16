class client_profile {
      idd = 1000;
      class controls {
            class text_details: RscText {
                  idc = 1000;
                  x = 20.5 * GUI_GRID_W + GUI_GRID_X;
                  y = 4 * GUI_GRID_H + GUI_GRID_Y;
                  w = 14.5 * GUI_GRID_W;
                  h = 12 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.3};
            };
            class title_count: RscText {
                  idc = 1001;
                  text = "1/3"; //--- ToDo: Localize;
                  x = 16 * GUI_GRID_W + GUI_GRID_X;
                  y = 3 * GUI_GRID_H + GUI_GRID_Y;
                  w = 4 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class list_profiles: RscListBox {
                  idc = 1500;
            	text = "Select"; //--- ToDo: Localize;
            	x = 5 * GUI_GRID_W + GUI_GRID_X;
            	y = 4 * GUI_GRID_H + GUI_GRID_Y;
            	w = 15 * GUI_GRID_W;
            	h = 11 * GUI_GRID_H;
            };
            class button_choose: RscButton {
            	idc = 1600;
                  action = "[] call Client_fnc_chooseProfile_action";
            	x = 5 * GUI_GRID_W + GUI_GRID_X;
            	y = 15 * GUI_GRID_H + GUI_GRID_Y;
            	w = 8 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            };
            class button_create: RscButton {
            	idc = 1601;
            	text = "Create"; //--- ToDo: Localize;
            	x = 13 * GUI_GRID_W + GUI_GRID_X;
            	y = 15 * GUI_GRID_H + GUI_GRID_Y;
            	w = 7 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            };
            class title_details: RscText {
            	idc = -1;
            	text = "Details"; //--- ToDo: Localize;
            	x = 20.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 3 * GUI_GRID_H + GUI_GRID_Y;
            	w = 14.5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.5};
            };
            class title_select: RscText {
            	idc = -1;
            	text = "Select Profile"; //--- ToDo: Localize;
            	x = 5 * GUI_GRID_W + GUI_GRID_X;
            	y = 3 * GUI_GRID_H + GUI_GRID_Y;
            	w = 11 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.5};
            };
      };
};
