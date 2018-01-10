class client_profile {
      idd = 1000;
      class controls {


            class list_profiles: RscListBox {
                  idc = 1500;
            };
            class button_choose: RscButton {
                  action = "[] call Client_fnc_chooseProfile_action";
            };
      };
};
