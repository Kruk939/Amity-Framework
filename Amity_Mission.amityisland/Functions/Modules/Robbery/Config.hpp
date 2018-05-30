class Robbery {
      class Config {
            cases[] = {
                  {"openrp_100k", 100000},
                  {"openrp_50k", 50000},
                  {"openrp_25k", 25000},
                  {"openrp_10k", 10000},
                  {"openrp_5k", 5000},
                  {"openrp_1k", 1000},
                  {"openrp_200", 200}
                  //class, value
            };
            class Marker {
                  shape = "ICON";
                  type = "hd_dot";
                  color = "ColorRed";
                  time = 120;
            };
            class Drill {
                  item = "openrp_Drill";
                  drillClass = "itemsvaultdrill1";
                  spawn[] = {0,0,0};
                  jammingChance = 5;
                  class Sounds {
                        class Drilling {
                              sound = "cg_mission_files\sounds\npdrill1.ogg";
                              distance = 45;
                              time = 14;
                        };
                        class Jammed {
                              sound = "cg_mission_files\sounds\npdrillfailing.ogg";
                              distance = 45;
                              time = 15;
                        };
                  };
                  class Place {
                        min = 10;
                        max = 40;
                  };
                  class Take {
                        min = 10;
                        max = 40;
                  };
                  class Repair {
                        min = 30;
                        max = 120;
                        item = "";
                  };
            };
      };
      class MainBank {
            safeClass = "Land_openrp_safe2";
            bankClass = "Land_pop_banco2";
            requiredFactions[] = {}; //faction_id, count
            cooldown = 10000;
            class Drill {
                  position[] = {0.5,-1.28,0};
                  class Time {
                        min = 30;
                        max = 60;
                  };
            };
            class Reward {
                  cases = 1;
                  min = 5000;
                  max = 10000;
                  class Cases {
                        item = "plp_cts_SuitcaseMetalSilver";
                        spawn[] = {4836.52,1942.4,8.60751};
                        positions[] {
                              {0.0, 0, -0.55},
                              {0.0, 0.3, -0.55},
                              {0.0, -0.3, -0.55},
                              {-0.1, 0, 0.29},
                              {-0.1, 0.3, 0.29},
                              {-0.1, -0.3, 0.29}
                        };
                        chance = 50; //chance for each case
                  };
            };
            class Reset {
                  after = 600;
                  messages[] = {
                        {"Bank Systems are resetting in 10 minutes!", 0},
                        {"Bank Systems resetting in 30 seconds!", 570},
                        {"Bank Systems are resetting!", 600}
                  };
            };
            class Notify {
                  enabled = 1;
                  after = 30;
                  factions[] = {{5, 100}}; //faction_id, chance
                  message = "STR_ROBBERY_ROB_ATM_NOTIFY_MARKER";
                  markerName = "STR_ROBBERY_ROB_ATM_NOTIFY_MESSAGE";
            };
            class Sound {
                  enabled = 0;
                  class Time {
                        min = 20;
                        max = 80;
                  };
                  sounds[] = {};
                  chance = 100;
            };

      };
      class ATM {
            atmClass = "Land_mattaust_ATM";
            requiredFactions[] = {}; //faction_id, count
            cooldown = 10000;
            class Drill {
                  position[] = {0,-0.8,0};
                  class Time {
                        min = 30;
                        max = 60;
                  };
            };
            class Reward {
                  min = 2000;
                  max = 10000;
                  cases = 1;
            };
            class Notify {
                  enabled = 1;
                  after = 30;
                  factions[] = {{5, 100}}; //faction_id, chance
                  message = "STR_ROBBERY_ROB_ATM_NOTIFY_MARKER";
                  markerName = "STR_ROBBERY_ROB_ATM_NOTIFY_MESSAGE";
            };
            class Sound {
                  enabled = 0;
                  class Time {
                        min = 20;
                        max = 80;
                  };
                  sounds[] = {};
                  chance = 100;
            };

      };
      class Shop {
            maxDistance = 20;
            requiredFactions[] = {}; //faction_id, count
            class Reward {
                  min = 2000;
                  max = 10000;
                  cases = 1;
                  randomItemsFrom[] = {{1, {}}, {2, {}}, {3, {}}}; //random items form shop_id, //shop_id, [_min, _max, _chance]
                  holderClass = "plp_ct_woodboxlightsmall";
                  removeAfter = 120;
            };
            class Items {
                  primary = 1;
                  secondary = 0;
                  inventory[] = {};
            };
            class Time {
                  min = 100;
                  max = 200;
                  cooltime = 600;
            };
            class Sound {
                  enabled = 1;
                  class Time {
                        min = 20;
                        max = 80;
                  };
                  sounds[] = {
                        "openrp_client\sounds\shopAlarm.ogg"
                  };
                  chance = 100;
            };
            class Notify {
                  enabled = 1;
                  after = 30;
                  factions[] = {{5, 100}}; //faction_id, chance
                  message = "STR_ROBBERY_ROB_SHOP_NOTIFY_MESSAGE";
                  markerName = "STR_ROBBERY_ROB_SHOP_NOTIFY_MARKER";
            };
      };
}
