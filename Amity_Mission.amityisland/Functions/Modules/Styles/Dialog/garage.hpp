class client_garage {
      idd = 1005;
      class controls {
            class Background: RscPicture {
            	idc = -1;
            	text = "\amityrp_data\gui\garage\garage.paa";
            	x = -11 * GUI_GRID_W + GUI_GRID_X;
            	y = -11.25 * GUI_GRID_H + GUI_GRID_Y;
            	w = 62 * GUI_GRID_W;
            	h = 47 * GUI_GRID_H;
            };
            class text_info: RscText {
                  idc = 1000;
                  style = ST_MULTI;
                  x = 20 * GUI_GRID_W + GUI_GRID_X;
                  y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 20 * GUI_GRID_W;
                  h = 18.5 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class listbox_vehicles: RscListbox {
            	idc = 1500;
                  onLBSelChanged = "['LB'] call Client_fnc_garage_action";
            	x = 0 * GUI_GRID_W + GUI_GRID_X;
            	y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 19.5 * GUI_GRID_W;
            	h = 20 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.5};
            };
            class button_take: RscButton {
                  idc = 1600;
                  text = "Take"; //--- ToDo: Localize;
                  action = "['SPAWN'] call Client_fnc_garage_action";
                  x = 20 * GUI_GRID_W + GUI_GRID_X;
                  y = 21 * GUI_GRID_H + GUI_GRID_Y;
                  w = 7 * GUI_GRID_W;
                  h = 1.5 * GUI_GRID_H;
            };
            class button_repair: RscButton {
                  idc = 1601;
                  text = "Repair"; //--- ToDo: Localize;
                  action = "['REPAIR'] call Client_fnc_garage_action";
                  x = 27 * GUI_GRID_W + GUI_GRID_X;
                  y = 21 * GUI_GRID_H + GUI_GRID_Y;
                  w = 7 * GUI_GRID_W;
                  h = 1.5 * GUI_GRID_H;
            };
            class button_exit: RscButton {
                  idc = 1602;
                  text = "Exit"; //--- ToDo: Localize;
                  action = " closeDialog 0; ";
                  x = 34 * GUI_GRID_W + GUI_GRID_X;
                  y = 21 * GUI_GRID_H + GUI_GRID_Y;
                  w = 6 * GUI_GRID_W;
                  h = 1.5 * GUI_GRID_H;
            };
            class title_garage: RscText {
            	idc = -1;
            	text = "Garage"; //--- ToDo: Localize;
            	x = 0 * GUI_GRID_W + GUI_GRID_X;
            	y = 0 * GUI_GRID_H + GUI_GRID_Y;
            	w = 40 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.7};
            };
            class title_vehicles: RscText
            {
            	idc = -1;
            	text = "Vehicles"; //--- ToDo: Localize;
            	x = 0 * GUI_GRID_W + GUI_GRID_X;
            	y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 19.5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.7};
            };
            class title_info: RscText
            {
            	idc = -1;
            	text = "Info"; //--- ToDo: Localize;
            	x = 20 * GUI_GRID_W + GUI_GRID_X;
            	y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 20 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.7};
            };
      };
};
