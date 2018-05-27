class Lockpicking {
      class Vehicle {
            class Item {
                  itemClass = "";
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
                  chance = 100;
                  sounds[] = {};
            };
      };
      class Holder {
            class Item {
                  itemClass = "";
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
