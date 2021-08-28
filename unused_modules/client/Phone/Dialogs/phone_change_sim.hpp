class phone_change_sim {
	idd = 1103;
	class controls {
		class PhoneFrame: TPhoneFrame {};
		class PhoneBackground: TPhoneBackground {};

		class HomeButtonPicture: THomeButtonPicture {};
		class HomeButtonButton: THomeButtonButton {
	      	action = "[] call ClientModules_Phone_fnc_phone_open;";
		};

		//apply
		class ApplyPicture: TApplyPicture {};
		class ApplyButton: TApplyButton {
			action = "['change'] call ClientModules_Phone_fnc_changeSim_action;";
		};

		//remove
		class RemovePicture: TRemovePicture {
	      	x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
		};
		class RemoveButton: TRemoveButton {
	      	x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
			action = "['remove'] call ClientModules_Phone_fnc_changeSim_action;";
		};

		//return
		class ReturnPicture: TReturnPicture { };
		class ReturnButton: TReturnButton {
		      action = "[] call ClientModules_Phone_fnc_phone_open;";
		};
		
		class Listbox_SIMs: RscListbox {
			idc = 1500;
			sizeEx = 0.030;
			font = "PuristaMedium";
                  onLBSelChanged= "['lb'] call ClientModules_Phone_fnc_changeSim_action;";
			x = P_COL_1 * GUI_GRID_W + GUI_GRID_X;
			y = P_Y * GUI_GRID_H + GUI_GRID_Y;
			w = (P_WIDTH - 2 * P_Margin) * GUI_GRID_W;
			h = 2 * (P_W_Btn + P_Margin) * GUI_GRID_H;
		};
		class Text_sim: RscText {
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
