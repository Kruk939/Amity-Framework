class crafting {
	idd = 9910;
	name = "crafting";
	movingEnable = 0;
	enableSimulation = 1;
	onLoad = "";
	class controlsBackground {
		class background_image: RscPicture {
			idc = 1200;
                  text = "\openrp_client\images\UI\crafting.paa";
            	x = -4 * GUI_GRID_W + GUI_GRID_X;
            	y = -5.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 48 * GUI_GRID_W;
            	h = 36 * GUI_GRID_H;
		};
	};
	class controls {
            class listbox_items: Company_RscListBox {
            	idc = 1500;
                  onLBSelChanged = "['LB'] call ClientModules_Crafting_fnc_action;";
            	x = 5.42 * GUI_GRID_W + GUI_GRID_X;
            	y = 8.35 * GUI_GRID_H + GUI_GRID_Y;
            	w = 14.2 * GUI_GRID_W;
            	h = 10.08 * GUI_GRID_H;
            };
            class text_info: Company_RscText {
            	idc = 1300;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			style = ST_MULTI;
            	x = 20.42 * GUI_GRID_W + GUI_GRID_X;
            	y = 8.35 * GUI_GRID_H + GUI_GRID_Y;
            	w = 14.2 * GUI_GRID_W;
            	h = 10.08 * GUI_GRID_H;
            };
            class edit_amount: Company_RscEdit {
            	idc = 1400;
            	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 2)";
                  onKeyUp = "['AMOUNT'] call ClientModules_Crafting_fnc_action;";
                  onKillFocus = "['AMOUNT'] call ClientModules_Crafting_fnc_action;";
                  onSetFocus = "ctrlSetText[1400,""""]";
                  onMouseButtonDown = "ctrlSetText[1400,""""]";
            	text = "1"; //--- ToDo: Localize;
            	x = 13.35 * GUI_GRID_W + GUI_GRID_X;
            	y = 19.08 * GUI_GRID_H + GUI_GRID_Y;
            	w = 6.19 * GUI_GRID_W;
            	h = 2.7 * GUI_GRID_H;
            };
            class button_craft: Company_HideButton {
            	idc = 1600;
                  action = "['CRAFT'] call ClientModules_Crafting_fnc_action;";
            	x = 20.34 * GUI_GRID_W + GUI_GRID_X;
            	y = 19.04 * GUI_GRID_H + GUI_GRID_Y;
            	w = 14.2 * GUI_GRID_W;
            	h = 1.1 * GUI_GRID_H;
            };
            class button_cancel: Company_HideButton {
            	idc = 1601;
			action = " closeDialog 0; ";
            	x = 20.34 * GUI_GRID_W + GUI_GRID_X;
            	y = 20.55 * GUI_GRID_H + GUI_GRID_Y;
            	w = 14.2 * GUI_GRID_W;
            	h = 1.1 * GUI_GRID_H;
            };
      };
};
