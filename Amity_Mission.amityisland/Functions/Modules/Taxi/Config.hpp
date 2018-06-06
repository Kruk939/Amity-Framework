class Taxi {
      class Config {
            layer = 10;
            class Fare {
                  minute = 2;
                  kilometer = 4;
                  start = 50;
            };
            class Loop {
                  updateEveryTicks = 30;
                  tickTime = 1;
            };
      };
};
