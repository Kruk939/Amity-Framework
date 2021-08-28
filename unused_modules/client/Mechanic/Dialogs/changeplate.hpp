class changeplate {
      idd = 564333;
      class controls {
            class text_title: RscText
            {
                  idc = 1000;
                  text = "Change plate"; //--- ToDo: Localize;
			style = ST_CENTER;
                  x = 23 * GUI_GRID_W + GUI_GRID_X;
                  y = 0 * GUI_GRID_H + GUI_GRID_Y;
                  w = 17 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class text_new: RscText {
                  idc = 1001;
                  text = "New plate"; //--- ToDo: Localize;
			style = ST_RIGHT;
                  x = 23 * GUI_GRID_W + GUI_GRID_X;
                  y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 7 * GUI_GRID_W;
                  h = 2 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class edit_plate: RscEdit {
                  idc = 1400;
                  text = "";
                  x = 30 * GUI_GRID_W + GUI_GRID_X;
                  y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 10 * GUI_GRID_W;
                  h = 2 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class button_apply: RscButton {
                  idc = 1600;
                  text = "Apply"; //--- ToDo: Localize;
                  action = "";
			colorBackground[] = {0.325,0.906,0.235,0.5};
                  x = 23 * GUI_GRID_W + GUI_GRID_X;
                  y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 8.5 * GUI_GRID_W;
                  h = 1.5 * GUI_GRID_H;
            };
            class button_exit: RscButton {
                  idc = 1601;
                  text = "Exit"; //--- ToDo: Localize;
                  action = " closeDialog 0; ";
  			colorBackground[] = {0.7,0,0,0.5};
                  x = 31.5 * GUI_GRID_W + GUI_GRID_X;
                  y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 8.5 * GUI_GRID_W;
                  h = 1.5 * GUI_GRID_H;
            };
      };
};
