class give_cash {
      idd = 666604;
	class controls {
		class background: RscPicture {
			idc = -1;
			text = "\openrp_client\images\UI\give_money.paa";
			x = -1 * GUI_GRID_W + GUI_GRID_X;
			y = -4 * GUI_GRID_H + GUI_GRID_Y;
			w = 42 * GUI_GRID_W;
			h = 34.5 * GUI_GRID_H;
		};
		class text_player: Company_RscText {
			idc = 1000;
			text = "";
			x = 18.25 * GUI_GRID_W + GUI_GRID_X;
			y = 12.4 * GUI_GRID_H + GUI_GRID_Y;
			w = 11 * GUI_GRID_W;
			h = 1.25 * GUI_GRID_H;
		};
		class edit_amount: Company_RscEdit {
			idc = 1400;
			text = "0";
			onKeyDown  = "['AMOUNT'] call ClientModules_Licenses_fnc_give_cash_action;";
			x = 18.25 * GUI_GRID_W + GUI_GRID_X;
			y = 13.93 * GUI_GRID_H + GUI_GRID_Y;
			w = 11 * GUI_GRID_W;
			h = 1.25 * GUI_GRID_H;
		};
		class button_give: Company_HideButton {
			idc = 1600;
			action = "['GIVE'] call ClientModules_Licenses_fnc_give_cash_action;";
			x = 10.8 * GUI_GRID_W + GUI_GRID_X;
			y = 15.3 * GUI_GRID_H + GUI_GRID_Y;
			w = 18.3 * GUI_GRID_W;
			h = 1.3 * GUI_GRID_H;
		};
		class button_cancel: Company_HideButton {
			idc = 1601;
			action = "closeDialog 0;";
			x = 11.7 * GUI_GRID_W + GUI_GRID_X;
			y = 18.2 * GUI_GRID_H + GUI_GRID_Y;
			w = 16.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
	};
};
