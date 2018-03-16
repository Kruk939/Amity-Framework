class client_faction_sign {
      idd = 1031;
      class controls {
            class text_info: RscText {
                  idc = 1000;
                  x = 20 * GUI_GRID_W + GUI_GRID_X;
                  y = 2 * GUI_GRID_H + GUI_GRID_Y;
                  w = 20 * GUI_GRID_W;
                  h = 16 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.3};
            };
            class listbox_list: RscListbox {
                  idc = 1500;
                  x = 0 * GUI_GRID_W + GUI_GRID_X;
                  y = 2 * GUI_GRID_H + GUI_GRID_Y;
                  w = 19.5 * GUI_GRID_W;
                  h = 16 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.3};
            };
            class button_exit: RscButton {
                  idc = 1600;
                  text = "Exit"; //--- ToDo: Localize;
                  x = 34 * GUI_GRID_W + GUI_GRID_X;
                  y = 18 * GUI_GRID_H + GUI_GRID_Y;
                  w = 6 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
            };
            class button_sign: RscButton {
                  idc = 1601;
                  text = "Sign in"; //--- ToDo: Localize;
                  x = 26 * GUI_GRID_W + GUI_GRID_X;
                  y = 18 * GUI_GRID_H + GUI_GRID_Y;
                  w = 8 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
            };
            class title_factions: RscText {
                  idc = -1;
                  text = "Faction list"; //--- ToDo: Localize;
                  x = 0 * GUI_GRID_W + GUI_GRID_X;
                  y = 1 * GUI_GRID_H + GUI_GRID_Y;
                  w = 19.5 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class title_sign: RscText {
                  idc = -1;
                  text = "Sign into faction"; //--- ToDo: Localize;
                  x = 0 * GUI_GRID_W + GUI_GRID_X;
                  y = 0 * GUI_GRID_H + GUI_GRID_Y;
                  w = 40 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.7};
            };
            class title_info: RscText {
                  idc = -1;
                  text = "Faction information"; //--- ToDo: Localize;
                  x = 20 * GUI_GRID_W + GUI_GRID_X;
                  y = 1 * GUI_GRID_H + GUI_GRID_Y;
                  w = 20 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
      };
};
