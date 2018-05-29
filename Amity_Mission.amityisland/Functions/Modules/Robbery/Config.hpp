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
                  factions[] = {}; //faction_id, chance
                  message = "STR_ROBBERY_ROB_SHOP_NOTIFY_MESSAGE";
                  markerName = "STR_ROBBERY_ROB_SHOP_NOTIFY_MARKER";
            };
      };
}
