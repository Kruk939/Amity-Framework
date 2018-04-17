class phone_services {
	idd = 1103;
	class controls {
		class PhoneFrame: TPhoneFrame {};
		class PhoneBackground: TPhoneBackground {};
		class TopRight: TopBarRight {};
		class TopLeft: TopBarLeft {};

		class HomeButtonPicture: THomeButtonPicture {};
		class HomeButtonButton: THomeButtonButton {
	      	action = "[] call ClientModules_Phone_fnc_phone_open;";
		};

		class PhoneGreenPicture: TPhoneGreenPicture {};
		class PhoneGreenButton: TPhoneGreenButton {
			action = "['call'] spawn ClientModules_Phone_fnc_services_action;";
		};

		class ReturnPicture: TReturnPicture { };
		class ReturnButton: TReturnButton {
		      action = "[] call ClientModules_Phone_fnc_phone_open;";
		};

		class Listbox_Service: RscCombo {
			idc = 1500;
			sizeEx = 0.030;
			onLBSelChanged = "[""CB""] spawn ClientModules_Phone_fnc_services_action; ";
			font = "PuristaMedium";
			x = (P_X + P_Margin) * GUI_GRID_W + GUI_GRID_X;
			y = (P_Y + P_Margin) * GUI_GRID_H + GUI_GRID_Y;
			w = (P_WIDTH - 2 * P_Margin) * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class Listbox_Workers: RscListbox {
			idc = 1501;
			onLBSelChanged = "[""LB""] spawn ClientModules_Phone_fnc_services_action; ";
			sizeEx = 0.030;
			font = "PuristaMedium";
			x = (P_X + P_Margin) * GUI_GRID_W + GUI_GRID_X;
			y = (P_ROW_2 - 1) * GUI_GRID_H + GUI_GRID_Y;
			w = (P_WIDTH - 2 * P_Margin) * GUI_GRID_W;
			h = 3 * (P_H_Btn + P_Margin) * GUI_GRID_H;
		};
	};
};
