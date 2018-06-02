class client_atm {
      idd = 1010;
      class controls {
            class text_cash: RscText {
            	idc = 1000;
            	text = "0"; //--- ToDo: Localize;
            	x = 19 * GUI_GRID_W + GUI_GRID_X;
            	y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 11 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.2};
            };
            class text_balance: RscText {
            	idc = 1001;
            	text = "0"; //--- ToDo: Localize;
            	x = 19 * GUI_GRID_W + GUI_GRID_X;
            	y = 4 * GUI_GRID_H + GUI_GRID_Y;
            	w = 11 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.2};
            };
            class edit_amount_1: RscEdit {
            	idc = 1400;
                  onKeyDown = "['AMOUNT_1'] call Client_fnc_atm_action";
            	x = 19 * GUI_GRID_W + GUI_GRID_X;
            	y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 11 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.2};
            };
            class edit_account: RscEdit {
            	idc = 1401;
            	x = 19 * GUI_GRID_W + GUI_GRID_X;
            	y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 11 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.2};
            };
            class edit_amount_2: RscEdit {
            	idc = 1402;
                  onKeyDown = "['AMOUNT_2'] call Client_fnc_atm_action";
            	text = "0"; //--- ToDo: Localize;
            	x = 19 * GUI_GRID_W + GUI_GRID_X;
            	y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 11 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.2};
            };
            class button_transfer: RscButton {
            	idc = 1602;
                  action = "['TRANSFER'] call Client_fnc_atm_action";
            	text = $STR_CORE_ATM_TRANSFER_ACTION; //--- ToDo: Localize;
            	x = 19 * GUI_GRID_W + GUI_GRID_X;
            	y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 11 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
            class button_payin: RscButton {
            	idc = 1600;
                  action = "['DEPOSIT'] call Client_fnc_atm_action";
            	text = $STR_CORE_ATM_PAYIN; //--- ToDo: Localize;
            	x = 19 * GUI_GRID_W + GUI_GRID_X;
            	y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
            class button_withdraw: RscButton {
            	idc = 1601;
                  action = "['WITHDRAW'] call Client_fnc_atm_action";
            	text = $STR_CORE_ATM_WITHDRAW; //--- ToDo: Localize;
            	x = 24.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 5.5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
            class button_exit: RscButton {
            	idc = 1603;
                  action = " closeDialog 0; ";
            	text = $STR_EXIT; //--- ToDo: Localize;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 24 * GUI_GRID_H + GUI_GRID_Y;
            	w = 20 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
            class combo_accounts: RscCombo {
            	idc = 2100;
                  onLBSelChanged = "['LB'] call Client_fnc_atm_action";
            	x = 19 * GUI_GRID_W + GUI_GRID_X;
            	y = 3 * GUI_GRID_H + GUI_GRID_Y;
            	w = 11 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.2};
            };
            class title_main: RscText {
            	idc = -1;
            	text = $STR_CORE_ATM; //--- ToDo: Localize;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 0 * GUI_GRID_H + GUI_GRID_Y;
            	w = 20 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.8};
            };
            class title_transfer: RscText {
            	idc = -1;
            	text = $STR_CORE_ATM_TRANSFER_TITLE; //--- ToDo: Localize;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 8 * GUI_GRID_H + GUI_GRID_Y;
            	w = 20 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.6};
            };
            class title_cash: RscText {
            	idc = -1;
                  style = ST_RIGHT;
            	text = $STR_CORE_ATM_CASH; //--- ToDo: Localize;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 9 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
            class title_account_1: RscText {
            	idc = -1;
                  style = ST_RIGHT;
            	text = $STR_CORE_ATM_ACCOUNT; //--- ToDo: Localize;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 3 * GUI_GRID_H + GUI_GRID_Y;
            	w = 9 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
            class title_balance: RscText {
            	idc = -1;
                  style = ST_RIGHT;
            	text = $STR_CORE_ATM_BALANCE; //--- ToDo: Localize;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 4 * GUI_GRID_H + GUI_GRID_Y;
            	w = 9 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
            class title_amount_1: RscText {
            	idc = -1;
                  style = ST_RIGHT;
            	text = $STR_CORE_ATM_AMOUNT; //--- ToDo: Localize;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 9 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
            class title_account_2: RscText {
            	idc = -1;
                  style = ST_RIGHT;
            	text = $STR_CORE_ATM_ACCOUNT; //--- ToDo: Localize;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 9 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
            class title_amount_2: RscText {
            	idc = -1;
                  style = ST_RIGHT;
            	text = $STR_CORE_ATM_AMOUNT; //--- ToDo: Localize;
            	x = 10 * GUI_GRID_W + GUI_GRID_X;
            	y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 9 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.4};
            };
      };
};
