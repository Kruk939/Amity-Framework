class paintjob {
      idd = 564332;
      onUnload = "['close'] call ClientModules_Mechanic_fnc_paintjob_action; ";
      class controls {
            class text_color: RscText {
                  idc = -1;
                  text = "Color"; //--- ToDo: Localize;
                  x = 28 * GUI_GRID_W + GUI_GRID_X;
                  y = 0 * GUI_GRID_H + GUI_GRID_Y;
                  w = 12 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class text_texture: RscText {
                  idc = -1;
                  text = "Texture"; //--- ToDo: Localize;
                  x = 28 * GUI_GRID_W + GUI_GRID_X;
                  y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 12 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class listbox_color: RscListbox {
                  idc = 1500;
                  onLBSelChanged = " ['color'] call ClientModules_Mechanic_fnc_paintjob_action; ";
                  colorBackground[] = {0,0,0,0.3};
                  x = 28 * GUI_GRID_W + GUI_GRID_X;
                  y = 1 * GUI_GRID_H + GUI_GRID_Y;
                  w = 12 * GUI_GRID_W;
                  h = 8 * GUI_GRID_H;
            };
            class listbox_texture: RscListbox {
                  idc = 1501;
                  onLBSelChanged = " ['material'] call ClientModules_Mechanic_fnc_paintjob_action; ";
                  colorBackground[] = {0,0,0,0.3};
                  x = 28 * GUI_GRID_W + GUI_GRID_X;
                  y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 12 * GUI_GRID_W;
                  h = 8 * GUI_GRID_H;
            };
            class button_apply: RscButton {
                  idc = 1600;
                  action = " ['apply'] call ClientModules_Mechanic_fnc_paintjob_action; ";
                  text = "Apply"; //--- ToDo: Localize;
			colorBackground[] = {0.325,0.906,0.235,0.5};
                  x = 28 * GUI_GRID_W + GUI_GRID_X;
                  y = 19 * GUI_GRID_H + GUI_GRID_Y;
                  w = 6 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
            };
            class button_exit: RscButton {
                  idc = 1601;
                  action = " ['close'] call ClientModules_Mechanic_fnc_paintjob_action; ";
                  text = "Exit"; //--- ToDo: Localize;
  			colorBackground[] = {0.7,0,0,0.5};
                  x = 34 * GUI_GRID_W + GUI_GRID_X;
                  y = 19 * GUI_GRID_H + GUI_GRID_Y;
                  w = 6 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
            };
      };
};
