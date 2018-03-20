class client_faction_manage_garage {
      idd = 1035;
      class controls {
            class text_info: RscText {
                  idc = 1000;
                  style = ST_MULTI;
                  x = 21 * GUI_GRID_W + GUI_GRID_X;
                  y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 19 * GUI_GRID_W;
                  h = 11 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.4};
            };
            class edit_access_level: RscEdit {
                  idc = 1400;
                  onKeyDown = " ['ACCESS'] call Client_fnc_faction_manage_garage_action; ";
                  x = 28 * GUI_GRID_W + GUI_GRID_X;
                  y = 16.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 12 * GUI_GRID_W;
                  h = 1.5 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.2};
            };
            class listbox_vehicles: RscListbox {
                  idc = 1500;
                  onLBSelChanged = " ['LB'] call Client_fnc_faction_manage_garage_action; ";
                  x = 0 * GUI_GRID_W + GUI_GRID_X;
                  y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 20.5 * GUI_GRID_W;
                  h = 17.5 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.4};
            };
            class button_exit: RscButton {
                  idc = 1600;
                  text = "Exit"; //--- ToDo: Localize;
                  action = " ['EXIT'] call Client_fnc_faction_manage_garage_action; ";
                  x = 30.5 * GUI_GRID_W + GUI_GRID_X;
                  y = 18.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 9.5 * GUI_GRID_W;
                  h = 1.5 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.4};
            };
            class button_edit: RscButton {
                  idc = 1601;
                  action = " ['SAVE'] call Client_fnc_faction_manage_garage_action; ";
                  text = "Edit"; //--- ToDo: Localize;
                  x = 21 * GUI_GRID_W + GUI_GRID_X;
                  y = 18.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 9 * GUI_GRID_W;
                  h = 1.5 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.4};
            };
            class listbox_employees: RscCombo {
                  idc = 2100;
                  x = 28 * GUI_GRID_W + GUI_GRID_X;
                  y = 15 * GUI_GRID_H + GUI_GRID_Y;
                  w = 12 * GUI_GRID_W;
                  h = 1.5 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.2};
            };
            class title_info: RscText {
                  idc = -1;
                  text = "Vehicle Info"; //--- ToDo: Localize;
                  x = 21 * GUI_GRID_W + GUI_GRID_X;
                  y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 19 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.6};
            };
            class title_edit: RscText {
                  idc = -1;
                  text = "Vehicle Edit"; //--- ToDo: Localize;
                  x = 21 * GUI_GRID_W + GUI_GRID_X;
                  y = 14 * GUI_GRID_H + GUI_GRID_Y;
                  w = 19 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.6};
            };
            class title_owner: RscText {
                  idc = -1;
                  text = "Owner:"; //--- ToDo: Localize;
                  x = 21 * GUI_GRID_W + GUI_GRID_X;
                  y = 15 * GUI_GRID_H + GUI_GRID_Y;
                  w = 7 * GUI_GRID_W;
                  h = 1.5 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.4};
            };
            class title_access_level: RscText {
                  idc = -1;
                  text = "Access Level:"; //--- ToDo: Localize;
                  x = 21 * GUI_GRID_W + GUI_GRID_X;
                  y = 16.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 7 * GUI_GRID_W;
                  h = 1.5 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.4};
            };
            class title_manage_garage: RscText {
                  idc = -1;
                  text = "Manage Garage"; //--- ToDo: Localize;
                  x = 0 * GUI_GRID_W + GUI_GRID_X;
                  y = 0 * GUI_GRID_H + GUI_GRID_Y;
                  w = 40 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.7};
            };
            class title_list: RscText {
                  idc = -1;
                  text = "Vehicle List"; //--- ToDo: Localize;
                  x = 0 * GUI_GRID_W + GUI_GRID_X;
                  y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 20.5 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.6};
            };
      };
};
