class client_faction_member_edit {
      idd = 1033;
      class controls {
            class text_info: RscText {
                  idc = 1000;
                  x = 0 * GUI_GRID_W + GUI_GRID_X;
                  y = 2 * GUI_GRID_H + GUI_GRID_Y;
                  w = 20 * GUI_GRID_W;
                  h = 12 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.3};
            };
            class text_member_edit: RscText {
                  idc = 1001;
                  text = "Edit member: "; //--- ToDo: Localize;
                  x = 0 * GUI_GRID_W + GUI_GRID_X;
                  y = 0 * GUI_GRID_H + GUI_GRID_Y;
                  w = 40 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.7};
            };
            class text_current: RscText {
                  idc = 1002;
                  text = "Current: 0"; //--- ToDo: Localize;
                  x = 30 * GUI_GRID_W + GUI_GRID_X;
                  y = 7 * GUI_GRID_H + GUI_GRID_Y;
                  w = 10 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.4};
            };
            class edit_access_level: RscEdit {
                  idc = 1400;
                  x = 29 * GUI_GRID_W + GUI_GRID_X;
                  y = 2 * GUI_GRID_H + GUI_GRID_Y;
                  w = 11 * GUI_GRID_W;
                  h = 1.5 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.3};
            };
            class edit_salary: RscEdit {
                  idc = 1401;
                  x = 29 * GUI_GRID_W + GUI_GRID_X;
                  y = 4 * GUI_GRID_H + GUI_GRID_Y;
                  w = 11 * GUI_GRID_W;
                  h = 1.5 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.3};
            };
            class edit_description: RscEdit {
                  idc = 1402;
                  x = 20.5 * GUI_GRID_W + GUI_GRID_X;
                  y = 8 * GUI_GRID_H + GUI_GRID_Y;
                  w = 19.5 * GUI_GRID_W;
                  h = 6 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.3};
            };
            class button_exit: RscButton {
                  idc = 1600;
                  text = "Exit"; //--- ToDo: Localize;
                  x = 34 * GUI_GRID_W + GUI_GRID_X;
                  y = 14 * GUI_GRID_H + GUI_GRID_Y;
                  w = 6 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
            };
            class button_save: RscButton {
                  idc = 1601;
                  text = "Save"; //--- ToDo: Localize;
                  x = 26 * GUI_GRID_W + GUI_GRID_X;
                  y = 14 * GUI_GRID_H + GUI_GRID_Y;
                  w = 8 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
            };
            class title_max: RscText {
                  idc = -1;
                  text = "Max 200 characters"; //--- ToDo: Localize;
                  x = 20.5 * GUI_GRID_W + GUI_GRID_X;
                  y = 7 * GUI_GRID_H + GUI_GRID_Y;
                  w = 9.5 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.4};
            };
            class title_access_level: RscText {
                  idc = -1;
                  text = "Access Level:"; //--- ToDo: Localize;
                  x = 20.5 * GUI_GRID_W + GUI_GRID_X;
                  y = 2 * GUI_GRID_H + GUI_GRID_Y;
                  w = 8.5 * GUI_GRID_W;
                  h = 1.5 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.4};
            };
            class title_info: RscText {
                  idc = -1;
                  text = "Member information"; //--- ToDo: Localize;
                  x = 0 * GUI_GRID_W + GUI_GRID_X;
                  y = 1 * GUI_GRID_H + GUI_GRID_Y;
                  w = 20 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class title_edit: RscText {
                  idc = -1;
                  text = "Edit"; //--- ToDo: Localize;
                  x = 20.5 * GUI_GRID_W + GUI_GRID_X;
                  y = 1 * GUI_GRID_H + GUI_GRID_Y;
                  w = 19.5 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class title_salary: RscText {
                  idc = -1;
                  text = "Salary:"; //--- ToDo: Localize;
                  x = 20.5 * GUI_GRID_W + GUI_GRID_X;
                  y = 4 * GUI_GRID_H + GUI_GRID_Y;
                  w = 8.5 * GUI_GRID_W;
                  h = 1.5 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.4};
            };
            class title_description: RscText {
                  idc = -1;
                  text = "Description:"; //--- ToDo: Localize;
                  x = 20.5 * GUI_GRID_W + GUI_GRID_X;
                  y = 6 * GUI_GRID_H + GUI_GRID_Y;
                  w = 19.5 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.4};
            };
      };
};
