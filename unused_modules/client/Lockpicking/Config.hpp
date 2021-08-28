class Lockpicking {
      class Vehicle {
            class Item {
                  itemClass = "CG_Lockpick";
                  removeOnTry = 0;
                  removeOnSuccess = 0;
                  removeOnFailed = 0;
            };
            chance = 50;
            class Time {
                  min = 100;
                  max = 200;
            };
            class Sound {
                  enabled = 1;
                  after = 3;
                  chance = 35;
                  sounds[] = {
                        "amityrp_data\sounds\car_alarm1.ogg",
                        "amityrp_data\sounds\car_alarm2.ogg",
                        "amityrp_data\sounds\car_alarm3.ogg"
                  };
            };
      };
      class Holder {
            class Item {
                  itemClass = "CG_Lockpick";
                  removeOnTry = 0;
                  removeOnSuccess = 0;
                  removeOnFailed = 0;
            };
            chance = 50;
            class Time {
                  min = 100;
                  max = 200;
            };
            class Sound {
                  enabled = 0;
                  chance = 0;
                  sounds[] = {};
            };
      };
};
