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
            class Safe {
                  safe = "Land_openrp_safe2";
                  relPos[] = {-1.17371,9.65674,-35.2};
                  relDir = -270;
            };
            class Grind {
                  item = "openrp_Grinder";
                  memoryPoint = "combinationlock";
                  remove = 0;
                  objClass = "openrp_trigger1";
                  title = "STR_ROBBERY_MAIN_BANK_GRINDING";
                  action = "STR_ROBBERY_MAIN_BANK_GRIND_USE";
                  variables[] = {
                        {"bis_disabled_Door_vault", 1, 1},
                        {"bis_disabled_Door_17", 1, 1}
                  };
                  animate[] = {
                        {"Door_17", 1}
                  };
                  class Time {
                        min = 30;
                        max = 120;
                  };
            };
            class crashVault {
                  item = "openrp_stethoscope";
                  memoryPoint = "trigger";
                  remove = 0;
                  objClass = "openrp_trigger2";
                  title = "STR_ROBBERY_MAIN_BANK_VAULTING";
                  action = "STR_ROBBERY_MAIN_BANK_VAULT_USE";
                  variables[] = {};
                  animate[] = {
                        {"Door_vault", 1}
                  };
                  class Time {
                        min = 180;
                        max = 300;
                  };
            };
            bankClass = "Land_pop_banco2";
            requiredFactions[] = {5,8}; //faction_id, count
            cooldown = 7200;
            class Drill {
                  position[] = {0.5,-1.28,0};
                  class Time {
                        min = 200;
                        max = 400;
                  };
            };
            class Reward {
                  cases = 1;
                  min = 10000;
                  max = 50000;
                  class Case {
                        item = "plp_cts_SuitcaseMetalSilver";
                        spawn[] = {4836.52,1942.4,8.60751};
                        positions[] = {
                              {0.0, 0, -0.55},
                              {0.0, 0.3, -0.55},
                              {0.0, -0.3, -0.55},
                              {-0.1, 0, 0.29},
                              {-0.1, 0.3, 0.29},
                              {-0.1, -0.3, 0.29}
                        };
                        class Time {
                              min = 5;
                              max = 20;
                        };
                        chance = 50; //chance for each case
                  };
            };
            class Reset {
                  after = 600;
                  messages[] = {
                        {"STR_ROBBERY_MAIN_BANK_RESET_10_MINS", 0},
                        {"STR_ROBBERY_MAIN_BANK_RESET_30_SECS", 570},
                        {"STR_ROBBERY_MAIN_BANK_RESET_30_NOW", 600}
                  };
            };
            class Notify {
                  enabled = 1;
                  after = 60;
                  factions[] = {{5, 100}}; //faction_id, chance
                  message = "STR_ROBBERY_MAIN_BANK_NOTIFY_MESSAGE";
                  markerName = "STR_ROBBERY_MAIN_BANK_NOTIFY_MARKER";
            };
            class Sound {
                  enabled = 1;
                  class Time {
                        min = 30;
                        max = 120;
                  };
                  sounds[] = {"openrp_client\sounds\shopAlarm.ogg"};
                  chance = 51;
            };
      };
      class ATM {
            atmClass = "Land_mattaust_ATM";
            requiredFactions[] = {5, 5}; //faction_id, count
            cooldown = 10080;
            class Drill {
                  position[] = {0,-0.8,0};
                  class Time {
                        min = 120;
                        max = 300;
                  };
            };
            class Reward {
                  min = 2000;
                  max = 10000;
                  cases = 1;
            };
            class Notify {
                  enabled = 1;
                  after = 90;
                  factions[] = {{5, 100}}; //faction_id, chance
                  message = "STR_ROBBERY_ROB_ATM_NOTIFY_MESSAGE";
                  markerName = "STR_ROBBERY_ROB_ATM_NOTIFY_MARKER";
            };
            class Sound {
                  enabled = 0;
                  class Time {
                        min = 60;
                        max = 120;
                  };
                  sounds[] = {};
                  chance = 100;
            };

      };
      class Shop {
            maxDistance = 20;
            requiredFactions[] = {5,5}; //faction_id, count
            class Reward {
                  min = 1000;
                  max = 5000;
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
                  chance = 51;
            };
            class Notify {
                  enabled = 1;
                  after = 40;
                  factions[] = {{5, 100}}; //faction_id, chance
                  message = "STR_ROBBERY_ROB_SHOP_NOTIFY_MESSAGE";
                  markerName = "STR_ROBBERY_ROB_SHOP_NOTIFY_MARKER";
            };
      };
}
