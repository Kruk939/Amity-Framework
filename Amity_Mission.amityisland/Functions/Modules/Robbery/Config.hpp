class Robbery {
      class Config {
            cases[] = {
                  //class, value
            };
      };
      class Shop {
            maxDistance = 20;
            class Reward {
                  min = 2000;
                  max = 10000;
                  cases = 1;
                  randomItemsFrom[] = {}; //random items form shop_id, //shop_id, [_min, _max, _chance]
                  holderClass = "";
            };
            class Items {
                  primary = 1;
                  secondary = 1;
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
                  sounds[] = {};
                  chance = 80;
            };
            class Notify {
                  enabled = 1;
                  factions[] = {}; //faction_id, chance
            };
      };
}
