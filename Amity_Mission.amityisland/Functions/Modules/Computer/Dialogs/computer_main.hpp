class computer_main {
      idd = 15000;
	class controls {
		class text_danger: RscText {
			idc = 1000;
			text = "Brak"; //--- ToDo: Localize;
			x = 33 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0.75,0,1};
		};
		class text_messages: RscText {
			idc = 1001;
			x = 18.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 21.5 * GUI_GRID_W;
			h = 8 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class edit_input: RscEdit {
			idc = 1400;
			x = 25.5 * GUI_GRID_W + GUI_GRID_X;
			y = 18 * GUI_GRID_H + GUI_GRID_Y;
			w = 14.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.2};
		};
		class edit_message: RscEdit {
			idc = 1401;
			x = 25 * GUI_GRID_W + GUI_GRID_X;
			y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 15 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.2};
		};
		class listbox_wanted_profiles: RscListbox {
			idc = 1500;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 18 * GUI_GRID_W;
			h = 9 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class listbox_wanted_vehicles: RscListbox {
			idc = 1501;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 14 * GUI_GRID_H + GUI_GRID_Y;
			w = 18 * GUI_GRID_W;
			h = 9 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class button_wanted_profile_check: RscButton {
			idc = 1600;
			text = $STR_COMPUTER_CHECK; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class button_wanted_profile_add: RscButton {
			idc = 1601;
			text = $STR_ADD; //--- ToDo: Localize;
			x = 12 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class button_wanted_vehicle_check: RscButton {
			idc = 1602;
			text = $STR_COMPUTER_CHECK; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 23 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class button_wanted_vehicle_add: RscButton {
			idc = 1603;
			text = $STR_ADD; //--- ToDo: Localize;
			x = 12 * GUI_GRID_W + GUI_GRID_X;
			y = 23 * GUI_GRID_H + GUI_GRID_Y;
			w = 6 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class button_combo_check: RscButton {
			idc = 1604;
			text = $STR_COMPUTER_CHECK; //--- ToDo: Localize;
			x = 26 * GUI_GRID_W + GUI_GRID_X;
			y = 15 * GUI_GRID_H + GUI_GRID_Y;
			w = 7.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class button_combo_add: RscButton {
			idc = 1605;
			text = $STR_ADD; //--- ToDo: Localize;
			x = 34 * GUI_GRID_W + GUI_GRID_X;
			y = 15 * GUI_GRID_H + GUI_GRID_Y;
			w = 6 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class button_input_check_name: RscButton {
			idc = 1607;
			text = $STR_COMPUTER_MAIN_NAME_SURNAME; //--- ToDo: Localize;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.2};
		};
		class button_input_check_id: RscButton {
			idc = 1606;
			text = $STR_COMPUTER_MAIN_ID; //--- ToDo: Localize;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 20.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.2};
		};
		class button_input_check_vin: RscButton {
			idc = 1608;
			text = $STR_COMPUTER_MAIN_VIN; //--- ToDo: Localize;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 22 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.2};
		};
		class button_input_check_license: RscButton {
			idc = 1609;
			text = $STR_COMPUTER_MAIN_PLATE; //--- ToDo: Localize;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 23 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.2};
		};
		class button_send: RscButton {
			idc = 1610;
			text = $STR_COMPUTER_MAIN_SEND; //--- ToDo: Localize;
			x = 34 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class combo_players: RscCombo {
			idc = 2100;
			x = 25.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14 * GUI_GRID_H + GUI_GRID_Y;
			w = 14.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.2};
		};
		class title_manual: RscText {
			idc = -1;
			text = $STR_COMPUTER_MAIN_SEARCH; //--- ToDo: Localize;
			x = 18.5 * GUI_GRID_W + GUI_GRID_X;
			y = 17 * GUI_GRID_H + GUI_GRID_Y;
			w = 21.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class title_input: RscText {
			idc = -1;
                  style = ST_RIGHT;
			text = $STR_COMPUTER_MAIN_ENTER; //--- ToDo: Localize;
			x = 18.5 * GUI_GRID_W + GUI_GRID_X;
			y = 18 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class title_search_check_profile: RscText {
			idc = -1;
                  style = ST_RIGHT;
			text = $STR_COMPUTER_MAIN_PERSON_SEARCH; //--- ToDo: Localize;
			x = 18.5 * GUI_GRID_W + GUI_GRID_X;
			y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 8.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class title_search_check_vehicle: RscText {
			idc = -1;
                  style = ST_RIGHT;
			text = $STR_COMPUTER_MAIN_VEHICLE_SEARCH; //--- ToDo: Localize;
			x = 18.5 * GUI_GRID_W + GUI_GRID_X;
			y = 22 * GUI_GRID_H + GUI_GRID_Y;
			w = 8.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class title_messages: RscText {
			idc = -1;
			text = $STR_COMPUTER_MAIN_MESSAGES; //--- ToDo: Localize;
			x = 18.5 * GUI_GRID_W + GUI_GRID_X;
			y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 21.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class title_enter: RscText {
			idc = -1;
                  style = ST_RIGHT;
			text = $STR_COMPUTER_MAIN_ENTER; //--- ToDo: Localize;
			x = 18.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class title_main: RscText {
			idc = -1;
			text = $STR_COMPUTER_MAIN_TITLE; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
			w = 33 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.8};
		};
		class title_wanted_profiles: RscText {
			idc = -1;
			text = $STR_COMPUTER_MAIN_WANTED_PROFILES; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 18 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class title_wanted_vehicles: RscText {
			idc = -1;
			text = $STR_COMPUTER_MAIN_WANTED_VEHICLES; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 13 * GUI_GRID_H + GUI_GRID_Y;
			w = 18 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class title_quick_search: RscText {
			idc = -1;
			text = $STR_COMPUTER_MAIN_QUICK_SEARCH; //--- ToDo: Localize;
			x = 18.5 * GUI_GRID_W + GUI_GRID_X;
			y = 13 * GUI_GRID_H + GUI_GRID_Y;
			w = 21.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class title_players: RscText {
			idc = -1;
                  style = ST_RIGHT;
			text = $STR_COMPUTER_PLAYERS; //--- ToDo: Localize;
			x = 18.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
	};
};
