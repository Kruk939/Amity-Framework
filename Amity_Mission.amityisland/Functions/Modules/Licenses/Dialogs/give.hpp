class license_give {
      idd = 666600;
      name = "license_give";
      movingEnable = 0;
      enableSimulation = 1;
      onLoad = "";
      class controlsBackground {
            class background_image: RscPicture {
            	idc = 1200;
			text = "\openrp_client\images\licenses\give.paa";
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = -4 * GUI_GRID_H + GUI_GRID_Y;
			w = 40 * GUI_GRID_W;
			h = 33 * GUI_GRID_H;
            };
      };
	class controls {
		class text_name: Company_RscText {
			idc = 1000;
			x = 18.25 * GUI_GRID_W + GUI_GRID_X;
			y = 7.8 * GUI_GRID_H + GUI_GRID_Y;
			w = 10.4 * GUI_GRID_W;
			h = 1.2 * GUI_GRID_H;
		};
		class edit_description: Company_RscEdit {
			idc = 1400;
			x = 13.7 * GUI_GRID_W + GUI_GRID_X;
			y = 13.7 * GUI_GRID_H + GUI_GRID_Y;
			w = 12.77 * GUI_GRID_W;
			h = 1.27 * GUI_GRID_H;
		};
		class edit_days: Company_RscEdit {
			idc = 1401;
			x = 19.21 * GUI_GRID_W + GUI_GRID_X;
			y = 16.35 * GUI_GRID_H + GUI_GRID_Y;
			w = 3.25 * GUI_GRID_W;
			h = 1.34 * GUI_GRID_H;
		};
		class button_create: Company_HideButton {
			idc = 1600;
			action = "['GIVE'] call ClientModules_Licenses_fnc_give_action;";
			x = 12 * GUI_GRID_W + GUI_GRID_X;
			y = 21 * GUI_GRID_H + GUI_GRID_Y;
			w = 16 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_cancel: Company_HideButton {
			idc = 1601;
			action = "closeDialog 0;";
			x = 12 * GUI_GRID_W + GUI_GRID_X;
			y = 22.8 * GUI_GRID_H + GUI_GRID_Y;
			w = 16 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class combobox_licenses: RscCombo {
			idc = 2100;
                  onLBSelChanged = "['LB'] call ClientModules_Licenses_fnc_give_action;";
			x = 11.33 * GUI_GRID_W + GUI_GRID_X;
			y = 5.85 * GUI_GRID_H + GUI_GRID_Y;
			w = 17.5 * GUI_GRID_W;
			h = 1.79 * GUI_GRID_H;
		};
		class text_days: Company_RscText {
			idc = -1;
			text = "Days:"; //--- ToDo: Localize;
			x = 13.6 * GUI_GRID_W + GUI_GRID_X;
			y = 16.35 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1.34 * GUI_GRID_H;
		};
	};
};
