class Amity_store {
      idd = 9900;
      name = "Amity_store";
      movingEnable = 0;
      enableSimulation = 1;
      onLoad = "";
      onUnload = "[] call ClientModules_Shop_fnc_terminateCamera;";
      class controlsBackground {
		class background_additional: RscPicture {
			idc = 1200;
			text = "\openrp_client\images\shops\gun_store";
			x = -8 * GUI_GRID_W + GUI_GRID_X;
			y = -7.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 50 * GUI_GRID_W;
			h = 40 * GUI_GRID_H;
		};
		class background_cart: RscPicture {
			idc = 1201;
			text = "\openrp_client\images\shops\cart";
			x = 13.5 * GUI_GRID_W + GUI_GRID_X;
			y = -10.35 * GUI_GRID_H + GUI_GRID_Y;
			w = 57.19 * GUI_GRID_W;
			h = 45.75 * GUI_GRID_H;
		};
      };
	class controls {
            class _CT_LISTNBOX_RIGHT;
            class _CT_LISTNBOX_LEFT;
		class combobox_shop: RscCombo {
			idc = 2100;
                  onLBSelChanged = "[""CB""] spawn ClientModules_Shop_fnc_action; ";
			x = 1.84 * GUI_GRID_W + GUI_GRID_X;
			y = 3.85 * GUI_GRID_H + GUI_GRID_Y;
			w = 30.34 * GUI_GRID_W;
			h = 1.29 * GUI_GRID_H;
		};
		class listbox_itemlist: Company_RscListBox {
			idc = 1500;
                  type = CT_LISTNBOX;
                  onLBSelChanged = "[""LB""] spawn ClientModules_Shop_fnc_action; ";
                  drawSideArrows = 0;
                  idcLeft = 67; // Left button IDC
			idcRight = 66; // Right button IDC
                  sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
                  columns[] = {0.0, 0.45, 0.6, 0.7};
			x = 1.84 * GUI_GRID_W + GUI_GRID_X;
			y = 5.82 * GUI_GRID_H + GUI_GRID_Y;
			w = 17.95 * GUI_GRID_W;
			h = 18.52 * GUI_GRID_H;
		};
		class listbox_cart_buy: Company_RscListBox {
			idc = 1501;
			x = 35.53 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13.17 * GUI_GRID_W;
			h = 6.38 * GUI_GRID_H;
		};
		class listbox_cart_sell: Company_RscListBox {
			idc = 1502;
			x = 35.53 * GUI_GRID_W + GUI_GRID_X;
			y = 12.86 * GUI_GRID_H + GUI_GRID_Y;
			w = 13.17 * GUI_GRID_W;
			h = 6.38 * GUI_GRID_H;
		};
		class button_cart_sell_remove: Company_HideButton {
			idc = 1700;
                  action = "[""SELL_REM""] spawn ClientModules_Shop_fnc_action; ";
			x = 35.53 * GUI_GRID_W + GUI_GRID_X;
			y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13.17 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_cart_payout: Company_HideButton {
			idc = 1701;
                  action = "[""PAY_OUT""] spawn ClientModules_Shop_fnc_action; ";
			x = 35.5 * GUI_GRID_W + GUI_GRID_X;
			y = 22.8 * GUI_GRID_H + GUI_GRID_Y;
			w = 13.17 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_store_buy: Company_HideButton {
			idc = 1702;
                  action = "[""BUY_ADD""] spawn ClientModules_Shop_fnc_action; ";
			x = 20.65 * GUI_GRID_W + GUI_GRID_X;
			y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_store_sell: Company_HideButton {
			idc = 1703;
                  action = "[""SELL_ADD""] spawn ClientModules_Shop_fnc_action; ";
			x = 20.65 * GUI_GRID_W + GUI_GRID_X;
			y = 21 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_close: Company_HideButton {
			idc = 1704;
                  action = " closeDialog 0; ";
			x = 20.65 * GUI_GRID_W + GUI_GRID_X;
			y = 23 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_cart_buy_remove: Company_HideButton {
			idc = 1705;
                  action = "[""BUY_REM""] spawn ClientModules_Shop_fnc_action; ";
			x = 35.5 * GUI_GRID_W + GUI_GRID_X;
			y = 9 * GUI_GRID_H + GUI_GRID_Y;
			w = 13.17 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class edit_amount: Company_RscEdit {
			idc = 1400;
                  text = "1";
                  onSetFocus = "ctrlSetText[1400,""""]";
                  onMouseButtonDown = "ctrlSetText[1400,""""]";
			x = 26.38 * GUI_GRID_W + GUI_GRID_X;
			y = 18.1 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.79 * GUI_GRID_W;
			h = 1.27 * GUI_GRID_H;
		};
		class text_info: Company_RscText {
			idc = 1000;
			style = ST_MULTI;
			x = 20.63 * GUI_GRID_W + GUI_GRID_X;
			y = 5.78 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.55 * GUI_GRID_W;
			h = 12.11 * GUI_GRID_H;
		};
	};
};
