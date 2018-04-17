class phone_messages {
	idd = 1103;
	class controls {
		class PhoneFrame: TPhoneFrame {};
		class PhoneBackground: TPhoneBackground {};

		class HomeButtonPicture: THomeButtonPicture {};
		class HomeButtonButton: THomeButtonButton {
	      	action = "[] call ClientModules_Phone_fnc_phone_open;";
		};

		class PhoneGreenPicture: TPhoneGreenPicture {};
		class PhoneGreenButton: TPhoneGreenButton {
			action = "['call'] spawn ClientModules_Phone_fnc_messages_action;";
		};

		class ChatPicture: TChatPicture {
		      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
		      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
		      w = P_W_Btn * GUI_GRID_W;
		      h = P_H_Btn * GUI_GRID_H;
		};
		class ChatButton: TChatButton {
		      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
		      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
		      w = P_W_Btn * GUI_GRID_W;
		      h = P_H_Btn * GUI_GRID_H;
			action = "['new'] call ClientModules_Phone_fnc_messages_action;";
			//action = "['end'] spawn ClientModules_Phone_fnc_contacts_action;";
		};

		class TPlusPicture: TPlusPicture {
		      x = P_COL_3 * GUI_GRID_W + GUI_GRID_X;
		      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
		      w = P_W_Btn * GUI_GRID_W;
		      h = P_H_Btn * GUI_GRID_H;
		};
		class TPlusButton: TPlusButton {
			action = "['add'] call ClientModules_Phone_fnc_messages_action;";
		      x = P_COL_3 * GUI_GRID_W + GUI_GRID_X;
		      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
		      w = P_W_Btn * GUI_GRID_W;
		      h = P_H_Btn * GUI_GRID_H;
		};
		class Listbox_messages: RscListbox {
			idc = 1500;
			sizeEx = 0.030;
			font = "PuristaMedium";
                  onLBSelChanged= "['lb'] call ClientModules_Phone_fnc_messages_action;";
			x = P_COL_1 * GUI_GRID_W + GUI_GRID_X;
			y = P_Y * GUI_GRID_H + GUI_GRID_Y;
			w = (P_WIDTH - 2 * P_Margin) * GUI_GRID_W;
			h = 2 * (P_W_Btn + P_Margin) * GUI_GRID_H;
		};
		class Text_message: RscText {
			idc = 1000;
			colorBackground[] = { 0, 0, 0, 0.3 };
			sizeEx = 0.030;
			style = ST_MULTI;
			font = "PuristaMedium";
			x = P_COL_1 * GUI_GRID_W + GUI_GRID_X;
			y = (P_ROW_3 + 1.5 * P_Margin) * GUI_GRID_H + GUI_GRID_Y;
			w = (P_WIDTH - 2 * P_Margin) * GUI_GRID_W;
			h = (2 * P_W_Btn) * GUI_GRID_H;
		};

	};
};
