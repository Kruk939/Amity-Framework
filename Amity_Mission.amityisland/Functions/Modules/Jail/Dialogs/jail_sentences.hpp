class jail_sentences {
      idd = 13000;
      class controls {
            class text_info: RscText {
            	idc = 1000;
            	text = "Info"; //--- ToDo: Localize;
                  style = ST_MULTI;
            	x = 13.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 26.5 * GUI_GRID_W;
            	h = 4.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
            class text_info_sentence: RscText {
            	idc = 1001;
                  style = ST_MULTI;
            	text = "Info"; //--- ToDo: Localize;
            	x = 26.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 13.5 * GUI_GRID_W;
            	h = 6 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
            class listbox_list: RscListbox {
            	idc = 1500;
                  onLBSelChanged = " ['LB'] call ClientModules_Jail_fnc_jail_sentences_action; ";
            	x = 0 * GUI_GRID_W + GUI_GRID_X;
            	y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 13 * GUI_GRID_W;
            	h = 20.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
            class listbox_previous: RscListbox {
            	idc = 1501;
                  onLBSelChanged = " ['LB_SET'] call ClientModules_Jail_fnc_jail_sentences_action; ";
            	x = 13.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 12.5 * GUI_GRID_W;
            	h = 6 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
            class listbox_currently: RscListbox {
            	idc = 1502;
            	x = 13.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 16 * GUI_GRID_H + GUI_GRID_Y;
            	w = 12.5 * GUI_GRID_W;
            	h = 5.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
            class button_release: RscButton {
            	idc = 1600;
                  action = " ['RELEASE'] call ClientModules_Jail_fnc_jail_sentences_action; ";
            	text = "Release"; //--- ToDo: Localize;
            	x = 13.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 12.5 * GUI_GRID_W;
            	h = 1.5 * GUI_GRID_H;
            };
            class button_exit: RscButton {
            	idc = 1601;
                  action = " closeDialog 0 ;";
            	text = "Exit"; //--- ToDo: Localize;
            	x = 26.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 13.5 * GUI_GRID_W;
            	h = 1.5 * GUI_GRID_H;
            };
            class title_main: RscText {
            	idc = -1;
            	text = "Jail Sentences"; //--- ToDo: Localize;
            	x = 0 * GUI_GRID_W + GUI_GRID_X;
            	y = 0 * GUI_GRID_H + GUI_GRID_Y;
            	w = 40 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.7};
            };
            class title_list: RscText {
            	idc = -1;
            	text = "List"; //--- ToDo: Localize;
            	x = 0 * GUI_GRID_W + GUI_GRID_X;
            	y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 13 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.6};
            };
            class title_info: RscText {
            	idc = -1;
            	text = "Info"; //--- ToDo: Localize;
            	x = 13.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 26.5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.6};
            };
            class title_previous: RscText {
            	idc = -1;
            	text = "Not served"; //--- ToDo: Localize;
            	x = 13.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 26.5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.6};
            };
            class title_active: RscText {
            	idc = -1;
            	text = "Currently in Jail"; //--- ToDo: Localize;
            	x = 13.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 15 * GUI_GRID_H + GUI_GRID_Y;
            	w = 12.5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.6};
            };
      };
}
