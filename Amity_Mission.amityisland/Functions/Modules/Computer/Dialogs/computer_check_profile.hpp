class computer_check_profile {
      idd = 15001;
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
		class text_name: RscText {
			idc = 1001;
			text = "John Raven"; //--- ToDo: Localize;
			x = 7.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.2};
		};
		class text_id: RscText {
			idc = 1002;
			text = "AZJMNCEVY"; //--- ToDo: Localize;
			x = 7.5 * GUI_GRID_W + GUI_GRID_X;
			y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.2};
		};
		class text_wanted: RscText {
			idc = 1003;
			text = "Nie"; //--- ToDo: Localize;
			x = 7.5 * GUI_GRID_W + GUI_GRID_X;
			y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,1,0,0.4};
		};
		class text_points: RscText {
			idc = 1004;
			text = "0"; //--- ToDo: Localize;
			x = 7.5 * GUI_GRID_W + GUI_GRID_X;
			y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.2};
		};
		class text_vehicles_count: RscText {
			idc = 1005;
			text = "2"; //--- ToDo: Localize;
			x = 7.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.2};
		};
		class text_houses_count: RscText {
			idc = 1006;
			text = "0"; //--- ToDo: Localize;
			x = 7.5 * GUI_GRID_W + GUI_GRID_X;
			y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.2};
		};
		class text_tickets_count: RscText {
			idc = 1007;
			text = "0"; //--- ToDo: Localize;
			x = 27.5 * GUI_GRID_W + GUI_GRID_X;
			y = 13.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 12.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.2};
		};
		class text_tickets_info: RscText {
			idc = 1008;
                  style = ST_MULTI;
			text = "Info"; //--- ToDo: Localize;
			x = 20 * GUI_GRID_W + GUI_GRID_X;
			y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 20 * GUI_GRID_W;
			h = 7.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.2};
		};
		class text_wanted_profiles_count: RscText {
			idc = 1009;
			text = "0"; //--- ToDo: Localize;
			x = 29 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.2};
		};
		class text_wanted_profiles_info: RscText {
			idc = 1010;
                  style = ST_MULTI;
			text = "Info"; //--- ToDo: Localize;
			x = 20 * GUI_GRID_W + GUI_GRID_X;
			y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 20 * GUI_GRID_W;
			h = 6.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.2};
		};
		class text_sentences_count: RscText {
			idc = 1011;
			text = "2"; //--- ToDo: Localize;
			x = 7.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.2};
		};
		class text_sentences_status: RscText {
			idc = 1012;
			text = "Ucieczka"; //--- ToDo: Localize;
			x = 7.5 * GUI_GRID_W + GUI_GRID_X;
			y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {1,0,0,0.4};
		};
		class listbox_sentences: RscListbox {
			idc = 1500;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 16.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 19 * GUI_GRID_W;
			h = 5.5 * GUI_GRID_H;
		};
		class button_wanted_profile_check: RscButton {
			idc = 1600;
			text = $STR_COMPUTER_CHECK; //--- ToDo: Localize;
			x = 20 * GUI_GRID_W + GUI_GRID_X;
			y = 11 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class button_wanted_profile_add: RscButton {
			idc = 1601;
			text = $STR_ADD; //--- ToDo: Localize;
			x = 33.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class button_wanted_vehicle_add: RscButton {
			idc = 1602;
			text = $STR_ADD; //--- ToDo: Localize;
			x = 12.5 * GUI_GRID_W + GUI_GRID_X;
			y = 12 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class button_sentences_check: RscButton {
			idc = 1603;
			text = $STR_COMPUTER_CHECK; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 22 * GUI_GRID_H + GUI_GRID_Y;
			w = 12 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class button_return: RscButton {
			idc = 1604;
			text = $STR_COMPUTER_RETURN; //--- ToDo: Localize;
			x = 30 * GUI_GRID_W + GUI_GRID_X;
			y = 23.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class button_vehicle_check: RscButton {
			idc = 1605;
			text = $STR_COMPUTER_CHECK; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 12 * GUI_GRID_H + GUI_GRID_Y;
			w = 12 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class combo_tickets: RscCombo {
			idc = 2100;
			x = 20 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 20 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class combo_wanted_cases: RscCombo {
			idc = 2101;
			x = 20 * GUI_GRID_W + GUI_GRID_X;
			y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 20 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class combo_licenses: RscCombo {
			idc = 2102;
			x = 7.5 * GUI_GRID_W + GUI_GRID_X;
			y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.2};
		};
		class combo_vehicles: RscCombo {
			idc = 2103;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 11 * GUI_GRID_H + GUI_GRID_Y;
			w = 19 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.2};
		};

		class title_vehicles: RscText {
			idc = -1;
			text = $STR_COMPUTER_VEHICLES; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 9 * GUI_GRID_H + GUI_GRID_Y;
			w = 19 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class title_licenses: RscText {
			idc = -1;
                  style = ST_RIGHT;
			text = $STR_COMPUTER_LICENSES; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class title_info: RscText {
			idc = -1;
			text = $STR_COMPUTER_INFO; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 19 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class title_name: RscText {
			idc = -1;
                  style = ST_RIGHT;
			text = $STR_COMPUTER_NAME_SURNAME; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class title_id: RscText {
			idc = -1;
                  style = ST_RIGHT;
			text = $STR_COMPUTER_WANTED_ID; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class title_vehicles_count: RscText {
			idc = -1;
                  style = ST_RIGHT;
			text = $STR_COMPUTER_COUNT; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 7.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class title_houses_count: RscText {
			idc = -1;
                  style = ST_RIGHT;
			text = $STR_COMPUTER_COUNT_HOUSES; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class title_wanted: RscText {
			idc = -1;
                  style = ST_RIGHT;
			text = $STR_COMPUTER_WANTED; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class title_points: RscText {
			idc = -1;
                  style = ST_RIGHT;
			text = $STR_COMPUTER_TICKET_POINTS; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class title_tickets: RscText {
			idc = -1;
			text = $STR_COMPUTER_TICKETS; //--- ToDo: Localize;
			x = 20 * GUI_GRID_W + GUI_GRID_X;
			y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 20 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class title_ticket_count: RscText {
			idc = -1;
                  style = ST_RIGHT;
			text = $STR_COMPUTER_COUNT; //--- ToDo: Localize;
			x = 20 * GUI_GRID_W + GUI_GRID_X;
			y = 13.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class title_wanted_profiles: RscText {
			idc = -1;
			text = $STR_COMPUTER_CASES; //--- ToDo: Localize;
			x = 20 * GUI_GRID_W + GUI_GRID_X;
			y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 20 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class title_wanted_profiles_count: RscText {
			idc = -1;
                  style = ST_RIGHT;
			text = $STR_COMPUTER_COUNT; //--- ToDo: Localize;
			x = 20 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 9 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class title_sentences: RscText {
			idc = -1;
			text = $STR_COMPUTER_SENTENCES; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 13.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 19 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.6};
		};
		class title_sentences_count: RscText {
			idc = -1;
                  style = ST_RIGHT;
			text = $STR_COMPUTER_COUNT; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class title_sentences_status: RscText {
			idc = -1;
                  style = ST_RIGHT;
			text = $STR_COMPUTER_STATUS; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class title_main: RscText {
			idc = -1;
			text = $STR_COMPUTER_CHECK_PROFILE_TITLE; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
			w = 33 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.8};
		};
	};
};
