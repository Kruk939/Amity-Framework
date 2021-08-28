class ticket_receive {
      idd = 14001;
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
            	colorShadow[] = { 0, 0, 0, 0};
            	colorBackground[] = {0,0,0,0.1};
            	colorText[] = {0,0,0,1};
            };
            class text_signed: RscText {
            	idc = 1001;
                  style = ST_LEFT;
            	x = 18 * GUI_GRID_W + GUI_GRID_X;
            	y = 4 * GUI_GRID_H + GUI_GRID_Y;
            	w = 12.5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorShadow[] = { 0, 0, 0, 0};
            	colorBackground[] = {0,0,0,0.1};
            	colorText[] = {0,0,0,1};
            };
            class text_points: RscText {
            	idc = 1002;
                  style = ST_RIGHT;
            	text = "0"; //--- ToDo: Localize;
            	x = 18 * GUI_GRID_W + GUI_GRID_X;
            	y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 12.5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorShadow[] = { 0, 0, 0, 0};
            	colorBackground[] = {0,0,0,0.1};
            	colorText[] = {0,0,0,1};
            };
            class text_amount: RscText {
            	idc = 1003;
                  style = ST_RIGHT;
            	text = "0"; //--- ToDo: Localize;
            	x = 18 * GUI_GRID_W + GUI_GRID_X;
            	y = 7 * GUI_GRID_H + GUI_GRID_Y;
            	w = 12.5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorShadow[] = { 0, 0, 0, 0};
            	colorBackground[] = {0,0,0,0.1};
            	colorText[] = {0,0,0,1};
            };
            class text_reason: RscText {
            	idc = 1004;
                  style = ST_MULTI;
            	x = 9 * GUI_GRID_W + GUI_GRID_X;
            	y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 21.5 * GUI_GRID_W;
            	h = 10.5 * GUI_GRID_H;
            	colorShadow[] = { 0, 0, 0, 0};
            	colorBackground[] = {0,0,0,0.1};
            	colorText[] = {0,0,0,1};
            };
            class button_accept: RscButton {
            	idc = 1600;
                  action = " ['ACCEPT'] call ClientModules_Ticket_fnc_ticket_receive_action; ";
            	text = $STR_TICKET_ACCEPT; //--- ToDo: Localize;
            	x = 9.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 22 * GUI_GRID_H + GUI_GRID_Y;
            	w = 6 * GUI_GRID_W;
            	h = 2 * GUI_GRID_H;
            	colorBackground[] = {0.325,0.906,0.235,1};
            };
            class button_exit: RscButton {
            	idc = 1601;
                  action = " ['EXIT'] call ClientModules_Ticket_fnc_ticket_receive_action; ";
            	text = $STR_TICKET_REJECT; //--- ToDo: Localize;
            	x = 24 * GUI_GRID_W + GUI_GRID_X;
            	y = 22 * GUI_GRID_H + GUI_GRID_Y;
            	w = 6 * GUI_GRID_W;
            	h = 2 * GUI_GRID_H;
            	colorBackground[] = {0.7,0,0,1};
            };
            class title_main: RscText {
                  idc = -1;
            	text = $STR_TICKET_DIALOG_RECEIVE_TITLE; //--- ToDo: Localize;
            	x = 9 * GUI_GRID_W + GUI_GRID_X;
            	y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 21.5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorShadow[] = { 0, 0, 0, 0};
            	colorBackground[] = {0,0,0,0.2};
            	colorText[] = {0,0,0,1};
            };
            class title_name: RscText {
                  idc = -1;
                  style = ST_RIGHT;
            	text = $STR_TICKET_DIALOG_NAME; //--- ToDo: Localize;
            	x = 9 * GUI_GRID_W + GUI_GRID_X;
            	y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 9 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorShadow[] = { 0, 0, 0, 0};
            	colorBackground[] = {0,0,0,0.2};
            	colorText[] = {0,0,0,1};
            };
            class title_signed: RscText {
                  idc = -1;
                  style = ST_RIGHT;
            	text = $STR_TICKET_DIALOG_RECEIVE_OFFICER_NAME; //--- ToDo: Localize;
            	x = 9 * GUI_GRID_W + GUI_GRID_X;
            	y = 4 * GUI_GRID_H + GUI_GRID_Y;
            	w = 9 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorShadow[] = { 0, 0, 0, 0};
            	colorBackground[] = {0,0,0,0.2};
            	colorText[] = {0,0,0,1};
            };
            class title_points: RscText {
                  idc = -1;
                  style = ST_RIGHT;
            	text = $STR_TICKET_DIALOG_POINTS; //--- ToDo: Localize;
            	x = 9 * GUI_GRID_W + GUI_GRID_X;
            	y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 9 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorShadow[] = { 0, 0, 0, 0};
            	colorBackground[] = {0,0,0,0.2};
            	colorText[] = {0,0,0,1};
            };
            class title_amount: RscText {
                  idc = -1;
                  style = ST_RIGHT;
            	text = $STR_TICKET_DIALOG_AMOUNT; //--- ToDo: Localize;
            	x = 9 * GUI_GRID_W + GUI_GRID_X;
            	y = 7 * GUI_GRID_H + GUI_GRID_Y;
            	w = 9 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorShadow[] = { 0, 0, 0, 0};
            	colorBackground[] = {0,0,0,0.2};
            	colorText[] = {0,0,0,1};
            };
            class title_reason: RscText {
                  idc = -1;
            	text = $STR_TICKET_DIALOG_REASON; //--- ToDo: Localize;
            	x = 9 * GUI_GRID_W + GUI_GRID_X;
            	y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 21.5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorShadow[] = { 0, 0, 0, 0};
            	colorBackground[] = {0,0,0,0.2};
            	colorText[] = {0,0,0,1};
            };
      };
};
