class phone_dispatch {
      idd = 5550001;
      class controls {
            class text_info: RscText {
            	idc = 1000;
                  style = ST_MULTI;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 4 * GUI_GRID_H + GUI_GRID_Y;
            	w = 20 * GUI_GRID_W;
            	h = 8.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
            class button_sign: RscButton {
            	idc = 1600;
                  action = "['SIGN'] call ClientModules_Dispatch_fnc_dispatch_action; ";
            	text = $STR_DISPATCH_SIGN; //--- ToDo: Localize;
            	x = 15.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 8 * GUI_GRID_W;
            	h = 1.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.6};
            };
            class button_exit: RscButton {
            	idc = 1601;
                  action = " closeDialog 0; ";
            	text = "Exit"; //--- ToDo: Localize;
            	x = 23.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 6.5 * GUI_GRID_W;
            	h = 1.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.6};
            };
            class combo_dispatch: RscCombo {
            	idc = 2100;
                  onLBSelChanged = "['CB'] call ClientModules_Dispatch_fnc_dispatch_action; ";
            	x = 19 * GUI_GRID_W + GUI_GRID_X;
            	y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 11 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
            class title_main: RscText {
            	idc = -1;
            	text = $STR_DISPATCH_MAIN; //--- ToDo: Localize;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 0 * GUI_GRID_H + GUI_GRID_Y;
            	w = 20 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.8};
            };
            class title_select: RscText {
            	idc = -1;
                  style = ST_RIGHT;
            	text = $STR_DISPATCH; //--- ToDo: Localize;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 9 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.6};
            };
            class title_info: RscText {
            	idc = -1;
            	text = $STR_DISPATCH_INFO; //--- ToDo: Localize;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 3 * GUI_GRID_H + GUI_GRID_Y;
            	w = 20 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.6};
            };
      };
};
