class faction_permissions {
      idd = 3000;
      class controlsBackground {
            class Background: RscPicture {
            	idc = -1;
            	text = "\amityrp_data\gui\faction\faction.paa";
            	x = -11 * GUI_GRID_W + GUI_GRID_X;
            	y = -11.25 * GUI_GRID_H + GUI_GRID_Y;
            	w = 62 * GUI_GRID_W;
            	h = 47 * GUI_GRID_H;
            };
            class title_main: RscText {
                  idc = -1;
                  text = "Edit permissions"; //--- ToDo: Localize;
                  x = 0 * GUI_GRID_W + GUI_GRID_X;
                  y = 0 * GUI_GRID_H + GUI_GRID_Y;
                  w = 40 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.7};
            };
            class title_permissions: RscText {
                  idc = -1;
                  text = "Permissions"; //--- ToDo: Localize;
                  x = 0 * GUI_GRID_W + GUI_GRID_X;
                  y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 18.5 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class title_info: RscText {
                  idc = -1;
                  text = "Info"; //--- ToDo: Localize;
                  x = 19 * GUI_GRID_W + GUI_GRID_X;
                  y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 21 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class title_name: RscText {
                  idc = -1;
                  text = "Permission: "; //--- ToDo: Localize;
                  x = 19 * GUI_GRID_W + GUI_GRID_X;
                  y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 7 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.3};
            };
            class title_edit: RscText {
                  idc = -1;
                  text = "Access Level:"; //--- ToDo: Localize;
                  x = 19 * GUI_GRID_W + GUI_GRID_X;
                  y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 7 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.3};
            };
            class title_members: RscText {
                  idc = -1;
                  text = "Members that will have access level"; //--- ToDo: Localize;
                  x = 19 * GUI_GRID_W + GUI_GRID_X;
                  y = 6 * GUI_GRID_H + GUI_GRID_Y;
                  w = 21 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };

      };
      class controls {
            class text_name: RscText {
                  idc = 1000;
                  text = "Test 124"; //--- ToDo: Localize;
                  x = 26 * GUI_GRID_W + GUI_GRID_X;
                  y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 14 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.3};
            };
            class edit_level: RscEdit {
                  idc = 1400;
                  onKeyDown = " ['ACCESS'] call ClientModules_Permissions_fnc_permissions_action; ";
                  x = 26 * GUI_GRID_W + GUI_GRID_X;
                  y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 14 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.3};
            };
            class listbox_permissions: RscListbox {
                  idc = 1500;
                  onLBSelChanged = " ['LB'] call ClientModules_Permissions_fnc_permissions_action; ";
                  x = 0 * GUI_GRID_W + GUI_GRID_X;
                  y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 18.5 * GUI_GRID_W;
                  h = 13.5 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.3};
            };
            class listbox_members: RscListbox {
                  idc = 1501;
                  x = 19 * GUI_GRID_W + GUI_GRID_X;
                  y = 7 * GUI_GRID_H + GUI_GRID_Y;
                  w = 21 * GUI_GRID_W;
                  h = 7 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.3};
            };
            class button_exit: RscButton {
                  idc = 1600;
                  action = " closeDialog 0; ";
                  text = "Exit"; //--- ToDo: Localize;
                  x = 33 * GUI_GRID_W + GUI_GRID_X;
                  y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 7 * GUI_GRID_W;
                  h = 1.5 * GUI_GRID_H;
            };
            class button_revert: RscButton {
                  idc = 1601;
                  action = " ['REVERT'] call ClientModules_Permissions_fnc_permissions_action; ";
                  text = "Revert"; //--- ToDo: Localize;
                  x = 26 * GUI_GRID_W + GUI_GRID_X;
                  y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 7 * GUI_GRID_W;
                  h = 1.5 * GUI_GRID_H;
            };
            class button_save: RscButton {
                  idc = 1602;
                  action = " ['SAVE'] call ClientModules_Permissions_fnc_permissions_action; ";
                  text = "Save"; //--- ToDo: Localize;
                  x = 19 * GUI_GRID_W + GUI_GRID_X;
                  y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 7 * GUI_GRID_W;
                  h = 1.5 * GUI_GRID_H;
            };
            class button_apply: RscButton {
                  idc = 1603;
                  action = " ['APPLY'] call ClientModules_Permissions_fnc_permissions_action; ";
                  text = "Apply"; //--- ToDo: Localize;
                  x = 32 * GUI_GRID_W + GUI_GRID_X;
                  y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 8 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
            };
      };
};
