class phone {
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
			action = "['answer'] spawn ClientModules_Phone_fnc_phone_action;";
		};

		class PhoneRedPicture: TPhoneRedPicture {};
		class PhoneRedButton: TPhoneRedButton {
			action = "['end'] spawn ClientModules_Phone_fnc_phone_action;";
		};

		class ContactsPicture: TContactsPicture {};
		class ContactsButton: TContactsButton {
			action = "[] call ClientModules_Phone_fnc_contacts_open;";
		};

		class VolumeUpPicture: TVolumeUpPicture {};
		class VolumeUpButton: TVolumeUpButton {
			action = "['upper'] spawn ClientModules_Phone_fnc_phone_action;";
		};


		class VolumeDownPicture: TVolumeDownPicture {};
		class VolumeDownButton: TVolumeDownButton {
			action = "['lower'] spawn ClientModules_Phone_fnc_phone_action;";
		};

		class VolumeMutePicture: TVolumeMutePicture {};
		class VolumeMuteButton: TVolumeMuteButton {
			action = "['mute'] spawn ClientModules_Phone_fnc_phone_action;";
		};

		class MessagePicture: TMessagePicture {};
		class MessageButton: TMessageButton {
			action = "[] call ClientModules_Phone_fnc_messages_open;";
		};

		class SyncPicture: TSyncPicture {};
		class SyncButton: TSyncButton {
			action = "[] spawn Client_fnc_syncData;";
		};

		class CartPicture: TCartPicture {};
		class CartButton: TCartButton {
			action = "[] call ClientModules_Phone_fnc_customize_open;";
		};

		class SimPicture: TSimPicture {};
		class SimButton: TSimButton {
			action = "[] call ClientModules_Phone_fnc_changeSim_open;";
		};

		class ServicePicture: TServicePicture {};
		class ServiceButton: TServiceButton {
			action = "[] call ClientModules_Phone_fnc_services_open;";
		};


		class CreditcardPicture: TCreditcardPicture {};
		class CreditcardButton: TCreditcardButton {
			action = "[] call ClientModules_Phone_fnc_addFounds_open;";
		};
		class Edit_number: RscEdit {
			idc = 1400;
			text = "123456789"; //--- ToDo: Localize;
			font = "PuristaMedium";
		      colorBackground[] = { 0, 0, 0, 0.5 };
			x = (P_X + P_Margin) * GUI_GRID_W + GUI_GRID_X;
			y = (P_ROW_4 + 3 * P_Margin) * GUI_GRID_H + GUI_GRID_Y;
			w = (P_WIDTH - 2 * P_Margin) * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};

		/*
		class InternetPicture: TInternetPicture {};
		class InternetButton: TInternetButton {
			action = "";
		};

		class DispatchPicture: TDispatchPicture {};
		class DispatchButton: TDispatchButton {
			action = "";
		};

		class KeysPicture: TKeysPicture {};
		class KeysButton: TKeysButton {
			action = "[] call ClientModules_Phone_fnc_loadKeys;";
		};
		*/

	};
};
