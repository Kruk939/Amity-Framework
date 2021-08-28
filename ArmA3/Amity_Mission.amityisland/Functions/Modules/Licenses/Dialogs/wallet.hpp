class license_wallet {
      idd = 666601;
      name = "license_wallet";
      movingEnable = 0;
      enableSimulation = 1;
      onLoad = "";
      class controlsBackground {
            class background_image: RscPicture {
            	idc = 1200;
            	text = "\openrp_client\images\licenses\wallet.paa";
            	x = -11 * GUI_GRID_W + GUI_GRID_X;
            	y = -10.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 62 * GUI_GRID_W;
            	h = 45.5 * GUI_GRID_H;
            };
      };
      class controls {
            class listbox_list: Company_RscListbox {
            	idc = 1500;
                  onLBSelChanged = "['LB'] call ClientModules_Licenses_fnc_wallet_action;";
            	x = 22.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 13 * GUI_GRID_H + GUI_GRID_Y;
            	w = 9.5 * GUI_GRID_W;
            	h = 7.5 * GUI_GRID_H;
            };
            class text_info: Company_RscText {
            	idc = 1000;
            	style = ST_MULTI;
            	x = 32.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 13.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 8 * GUI_GRID_W;
            	h = 8 * GUI_GRID_H;
            };
            class text_cash: Company_RscText {
            	idc = 1001;
            	x = 3 * GUI_GRID_W + GUI_GRID_X;
            	y = 17.7 * GUI_GRID_H + GUI_GRID_Y;
            	w = 10 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            };
            class text_bank: Company_RscText {
            	idc = 1002;
            	x = 3 * GUI_GRID_W + GUI_GRID_X;
            	y = 20 * GUI_GRID_H + GUI_GRID_Y;
            	w = 10 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            };
            class button_close: Company_HideButton {
            	idc = 1600;
                  action = "closeDialog 0;";
            	x = 22.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 21 * GUI_GRID_H + GUI_GRID_Y;
            	w = 5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            };
      };
};
