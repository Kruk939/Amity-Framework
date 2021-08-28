class styles_faction_view {
      idd = 1034;
      class controls {
            class Background: RscPicture {
            	idc = -1;
            	text = "\amityrp_data\gui\faction\faction.paa";
            	x = -11 * GUI_GRID_W + GUI_GRID_X;
            	y = -11.25 * GUI_GRID_H + GUI_GRID_Y;
            	w = 62 * GUI_GRID_W;
            	h = 47 * GUI_GRID_H;
            };
            class text_info: RscText {
                  idc = 1000;
                  style = ST_MULTI;
                  x = 0 * GUI_GRID_W + GUI_GRID_X;
                  y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 19 * GUI_GRID_W;
                  h = 18.5 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.4};
            };
            class text_price: RscText {
                  idc = 1001;
                  text = "0"; //--- ToDo: Localize;
                  x = 23.5 * GUI_GRID_W + GUI_GRID_X;
                  y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 6 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.3};
            };
            class listbox_avialable: RscListbox {
                  idc = 1500;
                  x = 19.5 * GUI_GRID_W + GUI_GRID_X;
                  y = 4 * GUI_GRID_H + GUI_GRID_Y;
                  w = 10 * GUI_GRID_W;
                  h = 6.5 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.2};
            };
            class listbox_current: RscListbox {
                  idc = 1501;
                  x = 30 * GUI_GRID_W + GUI_GRID_X;
                  y = 4 * GUI_GRID_H + GUI_GRID_Y;
                  w = 10 * GUI_GRID_W;
                  h = 8.5 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.2};
            };
            class title_navigation: RscText {
                  idc = -1;
                  text = "Navigation"; //--- ToDo: Localize;
                  x = 19.5 * GUI_GRID_W + GUI_GRID_X;
                  y = 13 * GUI_GRID_H + GUI_GRID_Y;
                  w = 20.5 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.6};
            };
            class button_buy: RscButton {
                  idc = 1600;
                  text = "Buy"; //--- ToDo: Localize;
                  x = 19.5 * GUI_GRID_W + GUI_GRID_X;
                  y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 10 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.4};
            };
            class button_members: RscButton {
                  idc = 1601;
                  action = " ['MEMBERS'] call Client_fnc_faction_view_action; ";
                  text = "Members"; //--- ToDo: Localize;
                  x = 19.5 * GUI_GRID_W + GUI_GRID_X;
                  y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 20.5 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.4};
            };
            class button_vehicles: RscButton {
                  idc = 1602;
                  action = " ['VEHICLES'] call Client_fnc_faction_view_action; ";
                  text = "Vehicles"; //--- ToDo: Localize;
                  x = 19.5 * GUI_GRID_W + GUI_GRID_X;
                  y = 16 * GUI_GRID_H + GUI_GRID_Y;
                  w = 20.5 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.4};
            };
            class button_permissions: RscButton {
                  idc = 1603;
                  action = " ['PERMS'] call Client_fnc_faction_view_action; ";
                  text = "Permissions"; //--- ToDo: Localize;
                  x = 19.5 * GUI_GRID_W + GUI_GRID_X;
                  y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 20.5 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.4};
            };
            class button_exit: RscButton {
                  idc = 1605;
                  action = " closeDialog 0; ";
                  text = "Exit"; //--- ToDo: Localize;
                  x = 19.5 * GUI_GRID_W + GUI_GRID_X;
                  y = 20 * GUI_GRID_H + GUI_GRID_Y;
                  w = 20.5 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.4};
            };
            class title_upgrades: RscText {
                  idc = -1;
                  text = "Upgrades"; //--- ToDo: Localize;
                  x = 19.5 * GUI_GRID_W + GUI_GRID_X;
                  y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 20.5 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.6};
            };
            class title_price: RscText {
                  idc = -1;
                  text = "Price:"; //--- ToDo: Localize;
                  x = 19.5 * GUI_GRID_W + GUI_GRID_X;
                  y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 4 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.4};
            };
            class title_avialable: RscText {
                  idc = -1;
                  text = "Avialable"; //--- ToDo: Localize;
                  x = 19.5 * GUI_GRID_W + GUI_GRID_X;
                  y = 3 * GUI_GRID_H + GUI_GRID_Y;
                  w = 10 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.4};
            };
            class title_current: RscText {
                  idc = -1;
                  text = "Current"; //--- ToDo: Localize;
                  x = 30 * GUI_GRID_W + GUI_GRID_X;
                  y = 3 * GUI_GRID_H + GUI_GRID_Y;
                  w = 10 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.4};
            };
            class title_faction: RscText {
                  idc = -1;
                  text = "Manage Faction"; //--- ToDo: Localize;
                  x = 0 * GUI_GRID_W + GUI_GRID_X;
                  y = 0 * GUI_GRID_H + GUI_GRID_Y;
                  w = 40 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.7};
            };
            class title_info: RscText {
                  idc = -1;
                  text = "Faction Info"; //--- ToDo: Localize;
                  x = 0 * GUI_GRID_W + GUI_GRID_X;
                  y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 19 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.6};
            };
      };
};
