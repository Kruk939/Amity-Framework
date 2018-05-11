class jail_insert {
      idd = 13001;
      class controls {
            class text_name: RscText {
            	idc = 1000;
            	text = ""; //--- ToDo: Localize;
            	x = 20 * GUI_GRID_W + GUI_GRID_X;
            	y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 10 * GUI_GRID_W;
            	h = 1.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.3};
            };
            class edit_sentence: RscEdit {
            	idc = 1400;
                  onKeyDown = " ['SENTENCE'] call ClientModules_Jail_fnc_jail_insert_action; ";
            	text = "0"; //--- ToDo: Localize;
            	x = 20 * GUI_GRID_W + GUI_GRID_X;
            	y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 10 * GUI_GRID_W;
            	h = 1.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.3};
            };
            class edit_reason: RscEdit {
            	idc = 1401;
                  onKeyDown = " ['REASON'] call ClientModules_Jail_fnc_jail_insert_action; ";
                  style = ST_MULTI;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 20 * GUI_GRID_W;
            	h = 8.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.3};
            };
            class button_process: RscButton {
            	idc = 1600;
            	text = $STR_JAIL_DIALOG_INSERT_PROCESS; //--- ToDo: Localize;
                  action = " ['PROCESS'] call ClientModules_Jail_fnc_jail_insert_action; ";
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 9 * GUI_GRID_W;
            	h = 1.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
            class button_exit: RscButton {
            	idc = 1601;
                  action = " closeDialog 0; ";
            	text = $STR_EXIT; //--- ToDo: Localize;
            	x = 19 * GUI_GRID_W + GUI_GRID_X;
            	y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 11 * GUI_GRID_W;
            	h = 1.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
            class combo_security: RscCombo {
            	idc = 2100;
            	x = 20 * GUI_GRID_W + GUI_GRID_X;
            	y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 10 * GUI_GRID_W;
            	h = 1.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.3};
            };
            class title_main: RscText {
            	idc = -1;
            	text = $STR_JAIL_DIALOG_INSERT_TITLE; //--- ToDo: Localize;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 0 * GUI_GRID_H + GUI_GRID_Y;
            	w = 20 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.7};
            };
            class title_name: RscText {
            	idc = -1;
                  style = ST_RIGHT;
            	text = $STR_JAIL_DIALOG_INSERT_NAME; //--- ToDo: Localize;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 10 * GUI_GRID_W;
            	h = 1.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.5};
            };
            class title_sentence: RscText {
            	idc = -1;
                  style = ST_RIGHT;
            	text = $STR_JAIL_DIALOG_INSERT_SENTENCE; //--- ToDo: Localize;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 10 * GUI_GRID_W;
            	h = 1.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.5};
            };
            class title_security: RscText {
            	idc = -1;
                  style = ST_RIGHT;
            	text = $STR_JAIL_DIALOG_INSERT_SECURITY; //--- ToDo: Localize;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 10 * GUI_GRID_W;
            	h = 1.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.5};
            };
            class title_reason: RscText {
            	idc = -1;
                  style = ST_RIGHT;
            	text = $STR_JAIL_DIALOG_INSERT_REASON; //--- ToDo: Localize;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 20 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.5};
            };
      };
}
