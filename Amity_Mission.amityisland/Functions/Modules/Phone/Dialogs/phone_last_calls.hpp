class phone_last_calls {
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

		//call
		class PhoneGreenPicture: TPhoneGreenPicture {};
		class PhoneGreenButton: TPhoneGreenButton {
			action = "['call'] spawn ClientModules_Phone_fnc_lastCalls_action;";
		};

		//add
		class TPlusPicture: TPlusPicture {};
		class TPlusButton: TPlusButton {
			action = "['add'] call ClientModules_Phone_fnc_lastCalls_action;";
		};

		class Listbox_Contacts: RscListbox {
			idc = 1500;
			sizeEx = 0.030;
			font = "PuristaMedium";
			x = (P_X + P_Margin) * GUI_GRID_W + GUI_GRID_X;
			y = (P_Y + P_Margin) * GUI_GRID_H + GUI_GRID_Y;
			w = (P_WIDTH - 2 * P_Margin) * GUI_GRID_W;
			h = 3 * (P_W_Btn + P_Margin) * GUI_GRID_H;
		};
	};
};
