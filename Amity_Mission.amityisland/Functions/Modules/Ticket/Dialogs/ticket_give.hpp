class ticket_give {
      idd = 14000;
      class controls {
            class image_background: RscPicture {
            	idc = 1200;
            	text = "\openrp_client\images\UI\ticket.paa";
            	x = 0 * GUI_GRID_W + GUI_GRID_X;
            	y = -4.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 40 * GUI_GRID_W;
            	h = 35 * GUI_GRID_H;
            };
            class text_name: RscText {
            	idc = 1000;
                  style = ST_LEFT;
            	x = 18 * GUI_GRID_W + GUI_GRID_X;
            	y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 12.5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.1};
                  colorText[] = {0,0,0,1};
            	colorShadow[] = { 0, 0, 0, 0};
            };
            class combo_preset: RscCombo {
            	idc = 2100;
                  onLBSelChanged = " ['CB'] call ClientModules_Ticket_fnc_ticket_give_action; ";
            	x = 18 * GUI_GRID_W + GUI_GRID_X;
            	y = 4 * GUI_GRID_H + GUI_GRID_Y;
            	w = 12.5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            };
            class edit_points: RscEdit {
            	idc = 1400;
                  style = ST_RIGHT;
                  onKeyDown = " ['POINTS'] call ClientModules_Ticket_fnc_ticket_give_action; ";
            	text = "0"; //--- ToDo: Localize;
            	x = 18 * GUI_GRID_W + GUI_GRID_X;
            	y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 12.5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.1};
                  colorText[] = {0,0,0,1};
            };
            class edit_amount: RscEdit {
            	idc = 1401;
                  style = ST_RIGHT;
                  onKeyDown = " ['AMOUNT'] call ClientModules_Ticket_fnc_ticket_give_action; ";
            	text = "0"; //--- ToDo: Localize;
            	x = 18 * GUI_GRID_W + GUI_GRID_X;
            	y = 7 * GUI_GRID_H + GUI_GRID_Y;
            	w = 12.5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.1};
                  colorText[] = {0,0,0,1};
            };
            class edit_reason: RscEdit {
            	idc = 1402;
                  style = ST_MULTI;
                  onKeyDown = " ['REASON'] call ClientModules_Ticket_fnc_ticket_give_action; ";
            	x = 9 * GUI_GRID_W + GUI_GRID_X;
            	y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 21.5 * GUI_GRID_W;
            	h = 10.5 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.1};
                  colorText[] = {0,0,0,1};
            };
            class button_accept: RscButton {
            	idc = 1600;
                  action = " ['SEND'] call ClientModules_Ticket_fnc_ticket_give_action; ";
            	text = $STR_TICKET_ACCEPT; //--- ToDo: Localize;
            	x = 9.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 22 * GUI_GRID_H + GUI_GRID_Y;
            	w = 6 * GUI_GRID_W;
            	h = 2 * GUI_GRID_H;
                  colorBackground[] = {0.325,0.906,0.235,1};
            };
            class button_exit: RscButton {
            	idc = 1601;
                  action = " closeDialog 0; ";
            	text = $STR_TICKET_CANCEL; //--- ToDo: Localize;
            	x = 24 * GUI_GRID_W + GUI_GRID_X;
            	y = 22 * GUI_GRID_H + GUI_GRID_Y;
            	w = 6 * GUI_GRID_W;
            	h = 2 * GUI_GRID_H;
                  colorBackground[] = {0.7,0,0,1};
            };
            class title_main: RscText {
            	idc = -1;
            	text = $STR_TICKET_DIALOG_GIVE_TITLE; //--- ToDo: Localize;
            	x = 9 * GUI_GRID_W + GUI_GRID_X;
            	y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 21.5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.2};
            	colorText[] = {0,0,0,1};
            	colorShadow[] = { 0, 0, 0, 0};
            };
            class title_name: RscText {
            	idc = -1;
                  style = ST_RIGHT;
            	text = $STR_TICKET_DIALOG_NAME; //--- ToDo: Localize;
            	x = 9 * GUI_GRID_W + GUI_GRID_X;
            	y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 9 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.2};
            	colorText[] = {0,0,0,1};
            	colorShadow[] = { 0, 0, 0, 0};
            };
            class title_preset: RscText {
            	idc = -1;
                  style = ST_RIGHT;
            	text = $STR_TICKET_DIALOG_GIVE_PRESET; //--- ToDo: Localize;
            	x = 9 * GUI_GRID_W + GUI_GRID_X;
            	y = 4 * GUI_GRID_H + GUI_GRID_Y;
            	w = 9 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.2};
            	colorText[] = {0,0,0,1};
            	colorShadow[] = { 0, 0, 0, 0};
            };
            class title_points: RscText {
            	idc = -1;
                  style = ST_RIGHT;
            	text = $STR_TICKET_DIALOG_POINTS; //--- ToDo: Localize;
            	x = 9 * GUI_GRID_W + GUI_GRID_X;
            	y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 9 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.2};
            	colorText[] = {0,0,0,1};
            	colorShadow[] = { 0, 0, 0, 0};
            };
            class title_amount: RscText {
            	idc = -1;
                  style = ST_RIGHT;
            	text = $STR_TICKET_DIALOG_AMOUNT; //--- ToDo: Localize;
            	x = 9 * GUI_GRID_W + GUI_GRID_X;
            	y = 7 * GUI_GRID_H + GUI_GRID_Y;
            	w = 9 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.2};
            	colorText[] = {0,0,0,1};
            	colorShadow[] = { 0, 0, 0, 0};
            };
            class title_reason: RscText {
            	idc = -1;
            	text = $STR_TICKET_DIALOG_REASON; //--- ToDo: Localize;
            	x = 9 * GUI_GRID_W + GUI_GRID_X;
            	y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 21.5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.2};
            	colorText[] = {0,0,0,1};
            	colorShadow[] = { 0, 0, 0, 0};
            };
      };
};
