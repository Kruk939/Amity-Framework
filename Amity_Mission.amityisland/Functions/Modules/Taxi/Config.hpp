class Taxi {
      class Config {
            layer = 10;
            class Fare {
                  minute = 1;
                  kilometer = 2;
                  start = 4;
            };
            class Loop {
                  updateEveryTicks = 30;
                  tickTime = 1;
            };
      };
};
