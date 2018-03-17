class client_atm {
      idd = 1010;
      class controls {
            class text_title: RscText {
                  idc = 1000;
                  text = "ATM"; //--- ToDo: Localize;
                  x = 9 * GUI_GRID_W + GUI_GRID_X;
                  y = 0 * GUI_GRID_H + GUI_GRID_Y;
                  w = 20 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class title_select: RscText {
                  idc = 1001;
                  text = "Select Account"; //--- ToDo: Localize;
                  x = 9 * GUI_GRID_W + GUI_GRID_X;
                  y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 20 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class title_cash: RscText {
                  idc = 1002;
                  text = "Balance"; //--- ToDo: Localize;
                  x = 9 * GUI_GRID_W + GUI_GRID_X;
                  y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 7 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class text_cash: RscText
            {
                  idc = 1003;
                  text = " $1000"; //--- ToDo: Localize;
                  x = 16 * GUI_GRID_W + GUI_GRID_X;
                  y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 13 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class title_withdraw: RscText {
                  idc = 1004;
                  text = "Amount"; //--- ToDo: Localize;
                  x = 9 * GUI_GRID_W + GUI_GRID_X;
                  y = 5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 7 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class title_account: RscText {
                  idc = 1005;
                  text = "Account"; //--- ToDo: Localize;
                  x = 9 * GUI_GRID_W + GUI_GRID_X;
                  y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 7 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class title_amount_account: RscText
            {
                  idc = 1006;
                  text = "Amount"; //--- ToDo: Localize;
                  x = 9 * GUI_GRID_W + GUI_GRID_X;
                  y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 7 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class edit_amount: RscEdit
            {
                  idc = 1400;
                  x = 16 * GUI_GRID_W + GUI_GRID_X;
                  y = 5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 13 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class edit_account: RscEdit
            {
                  idc = 1401;
                  x = 16 * GUI_GRID_W + GUI_GRID_X;
                  y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 13 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class edit_amount_account: RscEdit {
                  idc = 1402;
                  x = 16 * GUI_GRID_W + GUI_GRID_X;
                  y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 13 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
                  colorBackground[] = {0,0,0,0.5};
            };
            class button_withdraw: RscButton {
                  idc = 1600;
                  text = "Withdraw"; //--- ToDo: Localize;
                  action = "['WITHDRAW'] call Client_fnc_atm_action";
                  x = 19 * GUI_GRID_W + GUI_GRID_X;
                  y = 6 * GUI_GRID_H + GUI_GRID_Y;
                  w = 10 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
            };
            class button_payin: RscButton
            {
                  idc = 1601;
                  text = "Pay In"; //--- ToDo: Localize;
                  action = "['DEPOSIT'] call Client_fnc_atm_action";
                  x = 9 * GUI_GRID_W + GUI_GRID_X;
                  y = 6 * GUI_GRID_H + GUI_GRID_Y;
                  w = 10 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
            };
            class button_transfer: RscButton {
                  idc = 1602;
                  text = "Transfer"; //--- ToDo: Localize;
                  action = "['TRANSFER'] call Client_fnc_atm_action";
                  x = 9 * GUI_GRID_W + GUI_GRID_X;
                  y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 20 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
            };
            class button_exit: RscButton {
                  idc = 1603;
                  text = "Exit"; //--- ToDo: Localize;
                  action = " closeDialog 0; ";
                  x = 9 * GUI_GRID_W + GUI_GRID_X;
                  y = 11 * GUI_GRID_H + GUI_GRID_Y;
                  w = 20 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
            };
            class combo_accounts: RscCombo {
                  idc = 2100;
                  onLBSelChanged = "['LB'] call Client_fnc_atm_action";
                  x = 9 * GUI_GRID_W + GUI_GRID_X;
                  y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
                  w = 20 * GUI_GRID_W;
                  h = 1 * GUI_GRID_H;
            };
      };
};
