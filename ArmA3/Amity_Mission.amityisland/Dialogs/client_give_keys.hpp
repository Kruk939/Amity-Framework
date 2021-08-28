class client_give_keys {
      idd = 1006;
      class controls {
            class text_name: RscText {
                  idc = 1000;
                  x = 20 * GUI_GRID_W + GUI_GRID_X;
                  y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 10 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.4};
            };
            class text_info: RscText {
            	idc = 1001;
                  style = ST_MULTI;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 20 * GUI_GRID_W;
            	h = 9.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
            class button_give: RscButton {
            	idc = 1600;
                  action = "[""GIVE""] call Client_fnc_give_keys_action; ";
            	text = $STR_CORE_GIVE; //--- ToDo: Localize;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 15 * GUI_GRID_H + GUI_GRID_Y;
            	w = 11 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.6};
            };
            class button_exit: RscButton {
            	idc = 1601;
                  action = " closeDialog 0; ";
            	text = $STR_EXIT; //--- ToDo: Localize;
            	x = 21.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 15 * GUI_GRID_H + GUI_GRID_Y;
            	w = 8.5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.6};
            };
            class combo_vehicles: RscCombo {
            	idc = 2100;
                  onLBSelChanged = "[""LB""] call Client_fnc_give_keys_action; ";
            	x = 20 * GUI_GRID_W + GUI_GRID_X;
            	y = 3 * GUI_GRID_H + GUI_GRID_Y;
            	w = 10 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
            class title_main: RscText {
            	idc = -1;
            	text = $STR_CORE_AMITY_KEYS_TITLE; //--- ToDo: Localize;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 0 * GUI_GRID_H + GUI_GRID_Y;
            	w = 20 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.8};
            };
            class title_to_player: RscText {
            	idc = -1;
                  style = ST_RIGHT;
            	text = $STR_CORE_AMITY_KEYS_NAME; //--- ToDo: Localize;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 10 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.6};
            };
            class title_vehicle: RscText {
            	idc = -1;
                  style = ST_RIGHT;
            	text = $STR_CORE_AMITY_KEYS_VEHICLE; //--- ToDo: Localize;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 3 * GUI_GRID_H + GUI_GRID_Y;
            	w = 10 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.6};
            };
            class title_info: RscText {
            	idc = -1;
            	text = $STR_CORE_AMITY_KEYS_INFO; //--- ToDo: Localize;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 20 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.6};
            };
      };
};
