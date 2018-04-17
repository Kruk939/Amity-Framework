class phone_contacts {
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
			action = "['call'] spawn ClientModules_Phone_fnc_contacts_action;";
		};

		//sms button
		class ChatPicture: TChatPicture {
		      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
		      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
		};
		class ChatButton: TChatButton {
		      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
		      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
			action = "['sms'] call ClientModules_Phone_fnc_contacts_action;";
		};
		class ReturnPicture: TReturnPicture { };
		class ReturnButton: TReturnButton {
		      action = "[] call ClientModules_Phone_fnc_phone_open;";
		};

		class TPlusPicture: TPlusPicture {
		      x = P_COL_1 * GUI_GRID_W + GUI_GRID_X;
		      y = (P_ROW_4 + 2 * P_Margin) * GUI_GRID_H + GUI_GRID_Y;
		};
		class TPlusButton: TPlusButton {
		      x = P_COL_1 * GUI_GRID_W + GUI_GRID_X;
		      y = (P_ROW_4 + 2 * P_Margin) * GUI_GRID_H + GUI_GRID_Y;
			action = "[] call ClientModules_Phone_fnc_contactAdd_open;";
		};

		class TEditPicture: TEditPicture {
		      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
		      y = (P_ROW_4 + 2 * P_Margin) * GUI_GRID_H + GUI_GRID_Y;
		};
		class EditButton: TEditButton {
		      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
		      y = (P_ROW_4 + 2 * P_Margin) * GUI_GRID_H + GUI_GRID_Y;
			action = "['edit'] call ClientModules_Phone_fnc_contacts_action;";
		};

		class RemovePicture: TRemovePicture {
		      x = P_COL_3 * GUI_GRID_W + GUI_GRID_X;
		      y = (P_ROW_4 + 2 * P_Margin) * GUI_GRID_H + GUI_GRID_Y;
		};
		class RemoveButton: TRemoveButton {
		      x = P_COL_3 * GUI_GRID_W + GUI_GRID_X;
		      y = (P_ROW_4 + 2 * P_Margin) * GUI_GRID_H + GUI_GRID_Y;
			action = "['remove'] call ClientModules_Phone_fnc_contacts_action;";
		};

		class Listbox_Contacts: RscListbox {
			idc = 1500;
			sizeEx = 0.030;
			font = "PuristaMedium";
			x = (P_X + P_Margin) * GUI_GRID_W + GUI_GRID_X;
			y = (P_Y + P_Margin) * GUI_GRID_H + GUI_GRID_Y;
			w = (P_WIDTH - 2 * P_Margin) * GUI_GRID_W;
			h = 2.75 * (P_W_Btn + P_Margin) * GUI_GRID_H;
		};
	};
};
