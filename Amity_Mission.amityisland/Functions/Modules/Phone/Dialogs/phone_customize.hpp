class phone_customize {
	idd = 1103;
	onUnload = "['unload'] call ClientModules_Phone_fnc_customize_action;";
	class controls {
		class PhoneFrame: TPhoneFrame {};
		class PhoneBackground: TPhoneBackground {};
		class TopRight: TopBarRight {};
		class TopLeft: TopBarLeft {};

		class HomeButtonPicture: THomeButtonPicture {};
		class HomeButtonButton: THomeButtonButton {
	      	action = "[] call ClientModules_Phone_fnc_phone_open;";
		};

		//save button
		class ApplyPicture: TApplyPicture {};
		class ApplyButton: TApplyButton {
			action = "['save'] call ClientModules_Phone_fnc_customize_action;";
		};
		class ReturnPicture: TReturnPicture {};
		class ReturnButton: TReturnButton {
			action = "[] call ClientModules_Phone_fnc_phone_open;";
		};

		//mute button
		class VolumeMutePicture: TVolumeMutePicture {
		      x = P_COL_3 * GUI_GRID_W + GUI_GRID_X;
		      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
		      w = P_W_Btn * GUI_GRID_W;
		      h = P_H_Btn * GUI_GRID_H;
		};
		class VolumeMuteButton: TVolumeMuteButton {
			action = "['mute'] call ClientModules_Phone_fnc_customize_action;";
		      x = P_COL_3 * GUI_GRID_W + GUI_GRID_X;
		      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
		      w = P_W_Btn * GUI_GRID_W;
		      h = P_H_Btn * GUI_GRID_H;
		};

		class Text_backgrounds: RscText {
			idc = 1000;
			text = "Backgrounds"; //--- ToDo: Localize;
			font = "PuristaMedium";
			colorBackground[] = { 0, 0, 0, 0.5 };
			x = (P_X +  P_WIDTH + 2 * P_W_Btn) * GUI_GRID_W + GUI_GRID_X;
			y = (P_Y)   * GUI_GRID_H + GUI_GRID_Y;
			w = (P_WIDTH - 2 * P_Margin) * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class Listbox_Backgrounds: RscListbox {
			idc = 1500;
			onLBSelChanged= "['bg'] call ClientModules_Phone_fnc_customize_action;";
			sizeEx = 0.030;
			font = "PuristaMedium";
			x = (P_X +  P_WIDTH + 2 * P_W_Btn) * GUI_GRID_W + GUI_GRID_X;
			y = (P_Y + 1)   * GUI_GRID_H + GUI_GRID_Y;
			w = (P_WIDTH - 2 * P_Margin) * GUI_GRID_W;
			h = 4 * GUI_GRID_H;
		};
		class Text_Frames: RscText {
			idc = 1001;
			text = "Frames"; //--- ToDo: Localize;
			font = "PuristaMedium";
			colorBackground[] = { 0, 0, 0, 0.5 };
			x = (P_X +  P_WIDTH + 2 * P_W_Btn) * GUI_GRID_W + GUI_GRID_X;
			y = (P_Y + 5.5)   * GUI_GRID_H + GUI_GRID_Y;
			w = (P_WIDTH - 2 * P_Margin) * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class Listbox_Frames: RscListbox {
			idc = 1501;
			onLBSelChanged= "['frame'] call ClientModules_Phone_fnc_customize_action;";
			sizeEx = 0.030;
			font = "PuristaMedium";
			x = (P_X +  P_WIDTH + 2 * P_W_Btn) * GUI_GRID_W + GUI_GRID_X;
			y = (P_Y + 6.5)   * GUI_GRID_H + GUI_GRID_Y;
			w = (P_WIDTH - 2 * P_Margin) * GUI_GRID_W;
			h = 4 * GUI_GRID_H;
		};
		class Text_Ringtones: RscText {
			idc = 1002;
			text = "Ringtones"; //--- ToDo: Localize;
			font = "PuristaMedium";
			colorBackground[] = { 0, 0, 0, 0.5 };
			x = (P_X +  P_WIDTH + 2 * P_W_Btn) * GUI_GRID_W + GUI_GRID_X;
			y = (P_Y + 11)   * GUI_GRID_H + GUI_GRID_Y;
			w = (P_WIDTH - 2 * P_Margin) * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class Listbox_Ringtones: RscListbox {
			idc = 1502;
			onLBSelChanged= "['ring'] call ClientModules_Phone_fnc_customize_action;";
			sizeEx = 0.030;
			font = "PuristaMedium";
			x = (P_X +  P_WIDTH + 2 * P_W_Btn) * GUI_GRID_W + GUI_GRID_X;
			y = (P_Y + 12)   * GUI_GRID_H + GUI_GRID_Y;
			w = (P_WIDTH - 2 * P_Margin) * GUI_GRID_W;
			h = 4 * GUI_GRID_H;
		};
	};
};
