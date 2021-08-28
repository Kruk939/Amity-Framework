#define P_WIDTH 11.5
#define P_HEIGHT 14.5
#define P_X 13.5
#define P_Y 3
#define P_Margin 0.5
#define P_W_Btn 2.5
#define P_H_Btn 2

#define P_ROW_1 3.5
#define P_ROW_2 6
#define P_ROW_3 8.5
#define P_ROW_4 11
#define P_ROW_5 14.5
#define P_ROW_H 17
#define P_COL_1 14
#define P_COL_2 18
#define P_COL_3 22

class TPhoneFrame: RscPicture {
      idc = 1200;
      text = "\openrp_client\images\Phone\PhoneFrame\bg1.paa";
      x = 5.5 * GUI_GRID_W + GUI_GRID_X;
      y = -1 * GUI_GRID_H + GUI_GRID_Y;
      w = 27.5 * GUI_GRID_W;
      h = 22 * GUI_GRID_H;
};
class TPhoneBackground: RscPicture {
      idc = 1201;
      text = "\openrp_client\images\Phone\Wallpapers\1.paa";
      x = 4.9 * GUI_GRID_W + GUI_GRID_X;
      y = -1 * GUI_GRID_H + GUI_GRID_Y;
      w = 28.5 * GUI_GRID_W;
      h = 22.11 * GUI_GRID_H;
};
class TopBarRight: RscText {
      idc = 1099;
      colorBackground[] = { 0, 0, 0, 0.5 };
      text = "";
      style = ST_RIGHT;
      sizeEx = 0.025;
      font = "PuristaMedium";
      x = (P_X + (P_WIDTH / 2)) * GUI_GRID_W + GUI_GRID_X;
      y = (P_Y - 0.2) * GUI_GRID_H + GUI_GRID_Y;
      w = (P_WIDTH / 2) * GUI_GRID_W;
      h = 0.5 * GUI_GRID_H;

};
class TopBarLeft: TopBarRight {
      idc = 1098;
      style = ST_Left;
      x = (P_X) * GUI_GRID_W + GUI_GRID_X;
      w = (P_WIDTH / 2) * GUI_GRID_W;
};

class THomeButtonPicture: RscPicture {
      idc = 1202;
      text = "\openrp_client\images\Phone\Icons\home.paa";
      x = 18.23 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_H * GUI_GRID_H + GUI_GRID_Y;
      w = 2 * GUI_GRID_W;
      h = 1.5 * GUI_GRID_H;
};
class THomeButtonButton: RscButtonInv {
      idc = 1602;
      tooltip = "Home button"; //--- ToDo: Localize;
      action = "[] call ClientModules_Phone_fnc_phone_open;";
      x = 18.5 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_H * GUI_GRID_H + GUI_GRID_Y;
      w = 2 * GUI_GRID_W;
      h = 1.5 * GUI_GRID_H;
};

class TContactsPicture: RscPicture {
      idc = 1203;
      text = "\openrp_client\images\Phone\Icons\contacts.paa";
      x = P_COL_1 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_1 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
}
class TContactsButton: RscButtonInv {
	idc = 1603;
	tooltip = "Contacts"; //--- ToDo: Localize;
	action = "";
	x = P_COL_1 * GUI_GRID_W + GUI_GRID_X;
	y = P_ROW_1 * GUI_GRID_H + GUI_GRID_Y;
	w = P_W_Btn * GUI_GRID_W;
	h = P_H_Btn * GUI_GRID_H;
};

class TVolumeUpPicture: RscPicture {
      idc = 1204;
      text = "\openrp_client\images\Phone\Icons\volume2.paa";
      x = P_COL_1 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_3 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};
class TVolumeUpButton: RscButtonInv {
	idc = 1604;
      tooltip = "Volume +"; //--- ToDo: Localize;
      action = "";
      x = P_COL_1 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_3 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};

class TVolumeDownPicture: RscPicture {
      idc = 1205;
      text = "\openrp_client\images\Phone\Icons\volume1.paa";
      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_3 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};
class TVolumeDownButton: RscButtonInv {
	idc = 1605;
      tooltip = "Volume -"; //--- ToDo: Localize;
      action = "";
      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_3 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};

class TVolumeMutePicture: RscPicture {
      idc = 1206;
      text = "\openrp_client\images\Phone\Icons\volumemute.paa";
      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};
class TVolumeMuteButton: RscButtonInv {
	idc = 1606;
      tooltip = "Turn off calls"; //--- ToDo: Localize;
      action = "";
      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};

class TPhoneGreenPicture: RscPicture {
      idc = 1207;
      text = "\openrp_client\images\Phone\Icons\phonegreen.paa";
      x = P_COL_1 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};
class TPhoneGreenButton: RscButtonInv {
	idc = 1607;
      tooltip = "Answer call"; //--- ToDo: Localize;
      action = "";
      x = P_COL_1 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};

class TPhoneRedPicture: RscPicture {
      idc = 1208;
      text = "\openrp_client\images\Phone\Icons\phonered.paa";
      x = P_COL_3 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};
class TPhoneRedButton: RscButtonInv {
	idc = 1608;
      tooltip = "End call"; //--- ToDo: Localize;
      action = "";
      x = P_COL_3 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};

class TMessagePicture: RscPicture {
      idc = 1209;
      text = "\openrp_client\images\Phone\Icons\chat.paa";
      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_1 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};
class TMessageButton: RscButtonInv {
	idc = 1609;
      tooltip = "Messages"; //--- ToDo: Localize;
      action = "";
      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_1 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};

class TSyncPicture: RscPicture {
      idc = 1210;
      text = "\openrp_client\images\Phone\Icons\security.paa";
      x = P_COL_3 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_3 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};
class TSyncButton: RscButtonInv {
	idc = 1610;
      tooltip = "Synchronize me"; //--- ToDo: Localize;
      action = "";
      x = P_COL_3 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_3 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};

class TKeysPicture: RscPicture {
      idc = 1211;
      text = "\openrp_client\images\Phone\Icons\key.paa";
      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_2 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};
class TKeysButton: RscButtonInv {
	idc = 1611;
      tooltip = "Keys"; //--- ToDo: Localize;
      action = "";
      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_2 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};

class TWalletPicture: RscPicture {
      idc = 1212;
      text = "\openrp_client\images\Phone\Icons\wallet.paa";
      x = P_COL_1 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_2 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};
class TWalletButton: RscButtonInv {
	idc = 1612;
      tooltip = "Wallet"; //--- ToDo: Localize;
      action = "";
      x = P_COL_1 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_2 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};

class TPersonPicture: RscPicture {
      idc = 1213;
      text = "\openrp_client\images\Phone\Icons\person.paa";
      x = P_COL_3 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_1 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};
class TPersonButton: RscButtonInv {
	idc = 1613;
      tooltip = "Player info's"; //--- ToDo: Localize;
      action = "";
      x = P_COL_3 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_1 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};

class TInternetPicture: RscPicture {
      idc = 1214;
      text = "\openrp_client\images\Phone\Icons\internet.paa";
      x = P_COL_3 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_2 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};
class TInternetButton: RscButtonInv {
	idc = 1614;
      tooltip = "Internet"; //--- ToDo: Localize;
      action = "";
      x = P_COL_3 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_2 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};

class TDispatchPicture: RscPicture {
      idc = 1215;
      text = "\openrp_client\images\Phone\Icons\dispatch.paa";
      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_4 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};
class TDispatchButton: RscButtonInv {
	idc = 1615;
      tooltip = "Dispatch"; //--- ToDo: Localize;
      action = "";
      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_4 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};


class TPlusPicture: RscPicture {
      idc = 1216;
      text = "\openrp_client\images\Phone\Icons\plus.paa";
      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};
class TPlusButton: RscButtonInv {
	idc = 1616;
      tooltip = "Add contact"; //--- ToDo: Localize;
      action = "";
      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};

class TSimPicture: RscPicture {
      idc = 1217;
      text = "\openrp_client\images\Phone\Icons\memorycard.paa";
      x = P_COL_3 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_1 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};
class TSimButton: RscButtonInv {
	idc = 1617;
      tooltip = "SIM Cards"; //--- ToDo: Localize;
      action = "";
      x = P_COL_3 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_1 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};

class TSendPicture: RscPicture {
      idc = 1218;
      text = "\openrp_client\images\Phone\Icons\send.paa";
      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};
class TSendButton: RscButtonInv {
	idc = 1618;
      tooltip = "Send"; //--- ToDo: Localize;
      action = "";
      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};

class TChatPicture: RscPicture {
      idc = 1219;
      text = "\openrp_client\images\Phone\Icons\message.paa";
      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};
class TChatButton: RscButtonInv {
	idc = 1619;
      tooltip = "Send"; //--- ToDo: Localize;
      action = "";
      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};

class TCartPicture: RscPicture {
      idc = 1220;
      text = "\openrp_client\images\Phone\Icons\cart.paa";
      x = P_COL_1 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_2 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};
class TCartButton: RscButtonInv {
	idc = 1620;
      tooltip = "Customize"; //--- ToDo: Localize;
      action = "";
      x = P_COL_1 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_2 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};

class TApplyPicture: RscPicture {
      idc = 1221;
      text = "\openrp_client\images\Phone\Icons\apply.paa";
      x = P_COL_1 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};
class TApplyButton: RscButtonInv {
	idc = 1621;
      tooltip = "Apply"; //--- ToDo: Localize;
      action = "";
      x = P_COL_1 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};

class TEditPicture: RscPicture {
      idc = 1222;
      text = "\openrp_client\images\Phone\Icons\edit.paa";
      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};
class TEditButton: RscButtonInv {
	idc = 1622;
      tooltip = "Edit"; //--- ToDo: Localize;
      action = "";
      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};

class TRemovePicture: RscPicture {
      idc = 1223;
      text = "\openrp_client\images\Phone\Icons\remove.paa";
      x = P_COL_3 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};
class TRemoveButton: RscButtonInv {
	idc = 1623;
      tooltip = "Remove"; //--- ToDo: Localize;
      action = "";
      x = P_COL_1 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};

class TReturnPicture: RscPicture {
      idc = 1224;
      text = "\openrp_client\images\Phone\Icons\Return.paa";
      x = P_COL_3 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};
class TReturnButton: RscButtonInv {
	idc = 1624;
      tooltip = "Return"; //--- ToDo: Localize;
      action = "";
      x = P_COL_3 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_5 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};

class TCreditcardPicture: RscPicture {
      idc = 1225;
      text = "\openrp_client\images\Phone\Icons\Creditcard.paa";
      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_2 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};
class TCreditcardButton: RscButtonInv {
	idc = 1625;
      tooltip = "Funds"; //--- ToDo: Localize;
      action = "";
      x = P_COL_2 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_2 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};

class TServicePicture: RscPicture {
      idc = 1226;
      text = "\openrp_client\images\Phone\Icons\carsforsale.paa";
      x = P_COL_3 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_2 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};
class TServiceButton: RscButtonInv {
	idc = 1626;
      tooltip = "Services"; //--- ToDo: Localize;
      action = "";
      x = P_COL_3 * GUI_GRID_W + GUI_GRID_X;
      y = P_ROW_2 * GUI_GRID_H + GUI_GRID_Y;
      w = P_W_Btn * GUI_GRID_W;
      h = P_H_Btn * GUI_GRID_H;
};
