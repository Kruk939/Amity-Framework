class client_faction_members {
      idd = 1032;
      class controls {
            class text_info: RscText {
                  idc = 1000;
                  style = ST_MULTI;
                  text = "";
                  x = 20 * GUI_GRID_W + GUI_GRID_X;
                  y = 2 * GUI_GRID_H + GUI_GRID_Y;
                  w = 20 * GUI_GRID_W;
                  h = 16 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.3};
            };
            class listbox_members: RscListbox {
                  idc = 1500;
                  onLBSelChanged = " ['LB'] call Client_fnc_faction_members_action; ";
                  x = 0 * GUI_GRID_W + GUI_GRID_X;
                  y = 2 * GUI_GRID_H + GUI_GRID_Y;
                  w = 19.5 * GUI_GRID_W;
                  h = 16 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.3};
            };
            class button_exit: RscButton {
                  idc = 1600;
                  action = " closeDialog 0; ";
                  text = "Exit"; //--- ToDo: Localize;
                  x = 34 * GUI_GRID_W + GUI_GRID_X;
                  y = 18 * GUI_GRID_H + GUI_GRID_Y;
                  w = 6 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
            };
            class button_edit: RscButton {
                  idc = 1601;
                  action = " ['EDIT'] call Client_fnc_faction_members_action; ";
                  text = "Edit Member"; //--- ToDo: Localize;
                  x = 26 * GUI_GRID_W + GUI_GRID_X;
                  y = 18 * GUI_GRID_H + GUI_GRID_Y;
                  w = 8 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
            };
            class title_manage: RscText {
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
                  text = "Member information"; //--- ToDo: Localize;
                  x = 20 * GUI_GRID_W + GUI_GRID_X;
                  y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 20 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class title_members: RscText {
                  idc = -1;
                  text = "Members"; //--- ToDo: Localize;
                  x = 0 * GUI_GRID_W + GUI_GRID_X;
                  y = 1 * GUI_GRID_H + GUI_GRID_Y;
                  w = 19.5 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
      };
};
