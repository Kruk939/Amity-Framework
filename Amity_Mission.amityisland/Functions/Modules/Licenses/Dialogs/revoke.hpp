class license_revoke {
      idd = 666603;
      name = "license_revoke";
      movingEnable = 0;
      enableSimulation = 1;
      onLoad = "";
      class controlsBackground {
            class background_image: RscPicture {
            	idc = 1200;
            	text = "\openrp_client\images\licenses\revoke.paa";
            	x = 0 * GUI_GRID_W + GUI_GRID_X;
            	y = -4 * GUI_GRID_H + GUI_GRID_Y;
            	w = 40 * GUI_GRID_W;
            	h = 33 * GUI_GRID_H;
            };
      };
      class controls {
            class listbox_list: Company_RscListbox {
            	idc = 1500;
                  onLBSelChanged = "['LB'] spawn ClientModules_Licenses_fnc_revoke_action;";
            	x = 11.33 * GUI_GRID_W + GUI_GRID_X;
            	y = 5.85 * GUI_GRID_H + GUI_GRID_Y;
            	w = 17.5 * GUI_GRID_W;
            	h = 5.46 * GUI_GRID_H;
            };
            class text_info: Company_RscText {
            	idc = 1000;
            	style = ST_MULTI;
            	x = 11.33 * GUI_GRID_W + GUI_GRID_X;
            	y = 12.85 * GUI_GRID_H + GUI_GRID_Y;
            	w = 17.5 * GUI_GRID_W;
            	h = 7.15 * GUI_GRID_H;
            };
            class button_close: Company_HideButton {
            	idc = 1600;
                  action = "closeDialog 0;";
            	x = 12.1 * GUI_GRID_W + GUI_GRID_X;
            	y = 22.8 * GUI_GRID_H + GUI_GRID_Y;
            	w = 15.7 * GUI_GRID_W;
            	h = 1.5 * GUI_GRID_H;
            };
            class button_revoke: Company_HideButton {
            	idc = 1601;
                  action = "['REVOKE'] spawn ClientModules_Licenses_fnc_revoke_action;";
            	x = 12.1 * GUI_GRID_W + GUI_GRID_X;
            	y = 21 * GUI_GRID_H + GUI_GRID_Y;
            	w = 15.7 * GUI_GRID_W;
            	h = 1.5 * GUI_GRID_H;
            };
      };
};
