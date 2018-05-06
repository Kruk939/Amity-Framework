class public_job {
      idd = 11000;
      class controls {
            class title_main: RscText {
            	idc = -1;
            	text = "Public Jobs"; //--- ToDo: Localize;
            	x = 0 * GUI_GRID_W + GUI_GRID_X;
            	y = 0 * GUI_GRID_H + GUI_GRID_Y;
            	w = 40 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.7};
            };
            class title_list: RscText {
            	idc = -1;
            	text = "List"; //--- ToDo: Localize;
            	x = 0 * GUI_GRID_W + GUI_GRID_X;
            	y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 19 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.7};
            };
            class title_info: RscText {
            	idc = -1;
            	text = "Info"; //--- ToDo: Localize;
            	x = 19.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 20.5 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.7};
            };
            class text_info: RscText {
            	idc = 1000;
            	text = "Info"; //--- ToDo: Localize;
			style = ST_MULTI;
            	x = 19.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 20.5 * GUI_GRID_W;
            	h = 14.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.5};
            };
            class listbox_jobs: RscListbox {
            	idc = 1500;
                  onLBSelChanged = "[""LB""] call ClientModules_PublicJobs_fnc_public_job_action;";
            	x = 0 * GUI_GRID_W + GUI_GRID_X;
            	y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 19 * GUI_GRID_W;
            	h = 16.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.5};
            };
            class button_take: RscButton {
            	idc = 1600;
                  action = "[""START""] call ClientModules_PublicJobs_fnc_public_job_action;";
            	text = "Take"; //--- ToDo: Localize;
            	x = 19.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 10 * GUI_GRID_W;
            	h = 1.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.5};
            };
            class button_exit: RscButton {
            	idc = 1601;
                  action = " closeDialog 0; ";
            	text = "Exit"; //--- ToDo: Localize;
            	x = 30 * GUI_GRID_W + GUI_GRID_X;
            	y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 10 * GUI_GRID_W;
            	h = 1.5 * GUI_GRID_H;
            	colorBackground[] = {0,0,0,0.5};
            };
      };
};
