class RscInfo {
      name = "RscInfo";
      idd = 38501;
      movingEnable = 1;
      enableSimulation = 1;
      duration = 999999999;
      onLoad = "uiNamespace setVariable ['RscInfo',_this select 0]";
      class Controls {
            class background: RscText {
                  idc = -1;
                  x = 0.876406 * safezoneW + safezoneX;
                  y = 0.621 * safezoneH + safezoneY;
                  w = 0.113437 * safezoneW;
                  h = 0.143 * safezoneH;
                  colorBackground[] = {0,0,0,0.4};
            };
            class background_bar: RscText {
                  idc = -1;
                  text = "John Raven"; //--- ToDo: Localize;
                  x = 0.989844 * safezoneW + safezoneX;
                  y = 0.621 * safezoneH + safezoneY;
                  w = 0.0025 * safezoneW;
                  h = 0.143 * safezoneH;
                  colorBackground[] = {0.043,0.486,0.769,1};
                  colorShadow[] = { 0, 0, 0, 0 };
                  tooltipColorText[] = { 0, 0, 0, 0 };
                  tooltipColorBox[] = { 0, 0, 0, 0 };
                  tooltipColorShade[] = { 0, 0, 0, 0 };
            };

            class text_name: RscText {
            	idc = 1000;
            	text = "John Raven"; //--- ToDo: Localize;
            	x = 0.881562 * safezoneW + safezoneX;
            	y = 0.621 * safezoneH + safezoneY;
            	w = 0.109 * safezoneW;
            	h = 0.022 * safezoneH;
            	colorBackground[] = {0,0,0,0.4};
                  colorShadow[] = { 0, 0, 0, 0 };
                  tooltipColorText[] = { 0, 0, 0, 0 };
                  tooltipColorBox[] = { 0, 0, 0, 0 };
                  tooltipColorShade[] = { 0, 0, 0, 0 };
            };
            class text_faction: RscText {
            	idc = 1001;
                  style = ST_RIGHT;
            	text = "John Raven"; //--- ToDo: Localize;
            	x = 0.881562 * safezoneW + safezoneX;
            	y = 0.644 * safezoneH + safezoneY;
            	w = 0.109 * safezoneW;
            	h = 0.022 * safezoneH;
            	colorBackground[] = {0,0,0,0.4};
                  colorShadow[] = { 0, 0, 0, 0 };
                  tooltipColorText[] = { 0, 0, 0, 0 };
                  tooltipColorBox[] = { 0, 0, 0, 0 };
                  tooltipColorShade[] = { 0, 0, 0, 0 };
            };
            class text_cash: RscText {
            	idc = 1002;
            	text = "John Raven"; //--- ToDo: Localize;
            	x = 0.881562 * safezoneW + safezoneX;
            	y = 0.67 * safezoneH + safezoneY;
            	w = 0.109 * safezoneW;
            	h = 0.022 * safezoneH;
            	colorBackground[] = {0,0,0,0.4};
                  colorShadow[] = { 0, 0, 0, 0 };
                  tooltipColorText[] = { 0, 0, 0, 0 };
                  tooltipColorBox[] = { 0, 0, 0, 0 };
                  tooltipColorShade[] = { 0, 0, 0, 0 };
            };
            class text_info: RscText {
            	idc = 1003;
                  style = ST_MULTI;
            	text = ""; //--- ToDo: Localize;
            	x = 0.882281 * safezoneW + safezoneX;
            	y = 0.698 * safezoneH + safezoneY;
            	w = 0.108281 * safezoneW;
            	h = 0.066 * safezoneH;
            	colorBackground[] = {0,0,0,0.4};
                  colorShadow[] = { 0, 0, 0, 0 };
                  tooltipColorText[] = { 0, 0, 0, 0 };
                  tooltipColorBox[] = { 0, 0, 0, 0 };
                  tooltipColorShade[] = { 0, 0, 0, 0 };
            };
      };
};
