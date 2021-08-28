class client_profile_create {
      idd = 1001;
      onUnload = " ['EXIT'] call Client_fnc_createProfile_action; ";
      class controls {
            class text_title: RscText {
                  idc = 1000;
                  text = "Create Profile"; //--- ToDo: Localize;
                  x = 9 * GUI_GRID_W + GUI_GRID_X;
                  y = 0 * GUI_GRID_H + GUI_GRID_Y;
                  w = 20 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class text_first_name: RscText {
                  idc = 1001;
                  text = "First name"; //--- ToDo: Localize;
                  x = 9 * GUI_GRID_W + GUI_GRID_X;
                  y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 7 * GUI_GRID_W;
                  h = 1.5 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class text_last_name: RscText {
                  idc = 1002;
                  text = "Last name"; //--- ToDo: Localize;
                  x = 9 * GUI_GRID_W + GUI_GRID_X;
                  y = 3 * GUI_GRID_H + GUI_GRID_Y;
                  w = 7 * GUI_GRID_W;
                  h = 1.5 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class text_gender: RscText {
                  idc = 1003;
                  text = "Gender"; //--- ToDo: Localize;
                  x = 9 * GUI_GRID_W + GUI_GRID_X;
                  y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 7 * GUI_GRID_W;
                  h = 1.5 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class edit_first_name: RscEdit {
                  idc = 1400;
                  x = 16 * GUI_GRID_W + GUI_GRID_X;
                  y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 13 * GUI_GRID_W;
                  h = 1.5 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class edit_last_name: RscEdit {
                  idc = 1401;
                  x = 16 * GUI_GRID_W + GUI_GRID_X;
                  y = 3 * GUI_GRID_H + GUI_GRID_Y;
                  w = 13 * GUI_GRID_W;
                  h = 1.5 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class button_create: RscButton {
                  idc = 1600;
                  action = "['CREATE'] call Client_fnc_createProfile_action";
                  text = "Create"; //--- ToDo: Localize;
                  x = 9 * GUI_GRID_W + GUI_GRID_X;
                  y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 20 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
            };
            class button_exit: RscButton {
                  idc = 1601;
                  action = "['EXIT'] call Client_fnc_createProfile_action";
                  text = "Exit"; //--- ToDo: Localize;
                  x = 9 * GUI_GRID_W + GUI_GRID_X;
                  y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 20 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
            };
            class combo_gender: RscCombo {
                  idc = 2100;
                  x = 16 * GUI_GRID_W + GUI_GRID_X;
                  y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 13 * GUI_GRID_W;
                  h = 1.5 * GUI_GRID_H;
            };
      };
};
