class jail_lockers {
      idd = 13001;
      class controls {
            class text_info: RscText {
            	idc = 1000;
            	text = "Info"; //--- ToDo: Localize;
            	x = 20 * GUI_GRID_W + GUI_GRID_X;
            	y = 3 * GUI_GRID_H + GUI_GRID_Y;
            	w = 13 * GUI_GRID_W;
            	h = 3 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.3};
            };
            class listbox_list: RscListbox {
            	idc = 1500;
            	x = 0 * GUI_GRID_W + GUI_GRID_X;
            	y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 19.5 * GUI_GRID_W;
            	h = 13 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.3};
            };
            class button_open: RscButton {
            	idc = 1600;
            	text = "Open"; //--- ToDo: Localize;
            	x = 33 * GUI_GRID_W + GUI_GRID_X;
            	y = 3 * GUI_GRID_H + GUI_GRID_Y;
            	w = 7 * GUI_GRID_W;
            	h = 1.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
            class button_view_sentences: RscButton {
            	idc = 1601;
            	text = "View Sentences"; //--- ToDo: Localize;
            	x = 33 * GUI_GRID_W + GUI_GRID_X;
            	y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 7 * GUI_GRID_W;
            	h = 1.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
            class button_open_new: RscButton {
            	idc = 1602;
            	text = "Open"; //--- ToDo: Localize;
            	x = 20 * GUI_GRID_W + GUI_GRID_X;
            	y = 10 * GUI_GRID_H + GUI_GRID_Y;
            	w = 20 * GUI_GRID_W;
            	h = 1.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
            class button_force: RscButton {
            	idc = 1603;
            	text = "Force Close Locker"; //--- ToDo: Localize;
            	x = 20 * GUI_GRID_W + GUI_GRID_X;
            	y = 14 * GUI_GRID_H + GUI_GRID_Y;
            	w = 9.5 * GUI_GRID_W;
            	h = 1.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.3};
            };
            class button_exit: RscButton {
            	idc = 1604;
            	text = "Exit"; //--- ToDo: Localize;
            	x = 30 * GUI_GRID_W + GUI_GRID_X;
            	y = 14 * GUI_GRID_H + GUI_GRID_Y;
            	w = 10 * GUI_GRID_W;
            	h = 1.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.3};
            };
            class combo_players: RscCombo {
            	idc = 2100;
            	x = 30 * GUI_GRID_W + GUI_GRID_X;
            	y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 10 * GUI_GRID_W;
            	h = 1.5 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.2};
            };
            class title_main: RscText {
            	idc = -1;
            	text = "Jail Lockers"; //--- ToDo: Localize;
            	x = 0 * GUI_GRID_W + GUI_GRID_X;
            	y = 0 * GUI_GRID_H + GUI_GRID_Y;
            	w = 40 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.7};
            };
            class title_open_for: RscText {
            	idc = -1;
            	text = "Open new locker"; //--- ToDo: Localize;
            	x = 20 * GUI_GRID_W + GUI_GRID_X;
            	y = 7 * GUI_GRID_H + GUI_GRID_Y;
            	w = 20 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.6};
            };
            class title_player: RscText {
            	idc = -1;
            	text = "Player"; //--- ToDo: Localize;
            	x = 20 * GUI_GRID_W + GUI_GRID_X;
            	y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 10 * GUI_GRID_W;
            	h = 1.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
            class title_list: RscText {
            	idc = -1;
            	text = "List"; //--- ToDo: Localize;
            	x = 0 * GUI_GRID_W + GUI_GRID_X;
            	y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 19.5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.6};
            };
            class title_info: RscText {
            	idc = -1;
            	text = "Info"; //--- ToDo: Localize;
            	x = 20 * GUI_GRID_W + GUI_GRID_X;
            	y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 20 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.6};
            };
            class title_actions: RscText {
            	idc = -1;
            	text = "Actions"; //--- ToDo: Localize;
            	x = 20 * GUI_GRID_W + GUI_GRID_X;
            	y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 20 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.6};
            };
      };
};
