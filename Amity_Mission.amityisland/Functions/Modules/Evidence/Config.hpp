class Evidence {
      class Config {
            class Time {
                  max = 600;
                  class Data {
                        nearestCount = 120;
                        nearest = 360;
                        player = 400;
                  };
                  class Progress {
                        min = 10;
                        max = 60;
                  };
            };
            class Chance {
                  add = 90;
                  player = 80;
                  nearest = 30;
            };
            information[] = {{"name", 40}, {"profile_uid", 40}, {"first_name", 5}, {"last_name", 15}}; //variable name, chance
      };
      class Types {
            class Robbery {
                  variable = "robbery";
                  msg_prefix = "STR_EVIDENCE_TYPE_ROBBERY_MSG";
                  class Params {
                        player = 0;
                        nearest = 1;
                  };
                  actions[] = {
                        {"openrp_vendor_clothingstore", {"ACE_MainActions"}, "screenloc"}, //objClass, actions, position
                        {"openrp_vendor_gunshop", {"ACE_MainActions"}, "screenloc"},
                        {"openrp_vendor_shop", {"ACE_MainActions"}, "screenloc"}
                  };
            };
            class Drill {
                  variable = "drill";
                  text = "";
                  class Params {
                        player = 0;
                        nearest = 1;
                  };
                  actions[] = {
                        {"itemsvaultdrill1", {"ROBBING_DRILL"}, ""}
                  };
            };
            class DrillTarget {
                  variable = "drill_target";
                  text = "";
                  class Params {
                        player = 0;
                        nearest = 1;
                  };
                  actions[] = {
                        {"Land_mattaust_ATM", {}, {0.2,-0.2,0}},
                        {"Land_openrp_safe2", {}, {0.3,-1.28,0}}
                  };
            };
            class DrillFinish: Drill {
                  variable = "drill_finish";
                  text = "";
                  actions[] = {}; //not to double this actions
            };
            class DrillFinishTarget: DrillTarget {
                  variable = "drill_finish_target";
                  text = "";
                  actions[] = {}; //not to double this actions
            };
            class Bank {
                  variable = "bank";
                  text = "";
                  class Params {
                        player = 0;
                        nearest = 1;
                  };
                  actions[] = {}; //not to double this actions
            };
      };
};
