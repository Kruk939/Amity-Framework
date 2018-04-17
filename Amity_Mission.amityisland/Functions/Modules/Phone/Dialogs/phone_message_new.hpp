class phone_message_new {
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

		//send
		class SendPicture: TSendPicture {
	      	x = P_COL_1 * GUI_GRID_W + GUI_GRID_X;
		};
		class SendButton: TSendButton {
	      	x = P_COL_1 * GUI_GRID_W + GUI_GRID_X;
			action = "['send'] call ClientModules_Phone_fnc_message_new_action;";
		};
		class ReturnPicture: TReturnPicture {};
		class ReturnButton: TReturnButton {
			action = "[] call ClientModules_Phone_fnc_messages_open;";
		};

		class Text_number: RscText {
			idc = 1000;
			text = "Phone number:"; //--- ToDo: Localize;
			font = "PuristaMedium";
			style = ST_CENTER;
			x = (P_X + P_Margin) * GUI_GRID_W + GUI_GRID_X;
			y = (P_Y + P_Margin) * GUI_GRID_H + GUI_GRID_Y;
			w = (P_WIDTH - 2 * P_Margin) * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class Edit_number: RscEdit {
			idc = 1400;
			text = ""; //--- ToDo: Localize;
			font = "PuristaMedium";
			x = (P_X + P_Margin) * GUI_GRID_W + GUI_GRID_X;
			y = (P_Y + P_Margin + 1 * (1 + P_Margin)) * GUI_GRID_H + GUI_GRID_Y;
			w = (P_WIDTH - 2 * P_Margin) * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class Text_message: RscText {
			idc = 1001;
			style = ST_CENTER;
			text = "Message:"; //--- ToDo: Localize;
			font = "PuristaMedium";
			x = (P_X + P_Margin) * GUI_GRID_W + GUI_GRID_X;
			y = (P_Y + P_Margin + 2 * (1 + P_Margin)) * GUI_GRID_H + GUI_GRID_Y;
			w = (P_WIDTH - 2 * P_Margin) * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class Edit_message: RscEdit {
			idc = 1401;
			style = ST_MULTI;
			text = "Type here new message..."; //--- ToDo: Localize;
			font = "PuristaMedium";
			x = (P_X + P_Margin) * GUI_GRID_W + GUI_GRID_X;
			y = (P_Y + P_Margin + 3 * (1 + P_Margin)) * GUI_GRID_H + GUI_GRID_Y;
			w = (P_WIDTH - 2 * P_Margin) * GUI_GRID_W;
			h = (P_H_Btn * 3) * GUI_GRID_H;
		};

	};
};
