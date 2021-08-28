class phone_add_founds {
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
			action = "['buy'] call ClientModules_Phone_fnc_addFounds_action;";
		};

		//return
		class ReturnPicture: TReturnPicture { };
		class ReturnButton: TReturnButton {
		      action = "[] call ClientModules_Phone_fnc_phone_open;";
		};

		class Listbox_charges: RscListbox {
			idc = 1500;
			sizeEx = 0.030;
			font = "PuristaMedium";
                  onLBSelChanged= "['lb'] call ClientModules_Phone_fnc_changeSim_action;";
			x = P_COL_1 * GUI_GRID_W + GUI_GRID_X;
			y = P_Y * GUI_GRID_H + GUI_GRID_Y;
			w = (P_WIDTH - 2 * P_Margin) * GUI_GRID_W;
			h = 2 * (P_W_Btn + P_Margin) * GUI_GRID_H;
		};
	};
};
