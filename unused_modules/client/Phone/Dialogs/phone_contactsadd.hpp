class phone_contactsadd {
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

		class TPlusPicture: TPlusPicture {};
		class TPlusButton: TPlusButton {
			action = "['add'] call ClientModules_Phone_fnc_contactAdd_action;";
		};

		class Text_contact_name: RscText {
			idc = 1000;
			text = "Contact name"; //--- ToDo: Localize;
			font = "PuristaMedium";
			style = ST_CENTER;
			x = (P_X + P_Margin) * GUI_GRID_W + GUI_GRID_X;
			y = (P_Y + P_Margin) * GUI_GRID_H + GUI_GRID_Y;
			w = (P_WIDTH - 2 * P_Margin) * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class Edit_contact_name: RscEdit {
			idc = 1400;
			text = "Jan Kowalski"; //--- ToDo: Localize;
			font = "PuristaMedium";
			x = (P_X + P_Margin) * GUI_GRID_W + GUI_GRID_X;
			y = (P_Y + P_Margin + 1 * (1 + P_Margin)) * GUI_GRID_H + GUI_GRID_Y;
			w = (P_WIDTH - 2 * P_Margin) * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class Text_number: RscText {
			idc = 1001;
			style = ST_CENTER;
			text = "Phone number"; //--- ToDo: Localize;
			font = "PuristaMedium";
			x = (P_X + P_Margin) * GUI_GRID_W + GUI_GRID_X;
			y = (P_Y + P_Margin + 2 * (1 + P_Margin)) * GUI_GRID_H + GUI_GRID_Y;
			w = (P_WIDTH - 2 * P_Margin) * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class Edit_number: RscEdit {
			idc = 1401;
			text = "123456789"; //--- ToDo: Localize;
			font = "PuristaMedium";
			x = (P_X + P_Margin) * GUI_GRID_W + GUI_GRID_X;
			y = (P_Y + P_Margin + 3 * (1 + P_Margin)) * GUI_GRID_H + GUI_GRID_Y;
			w = (P_WIDTH - 2 * P_Margin) * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
	};
};
