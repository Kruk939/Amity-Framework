class PublicJobs {
      class Config {
            paycheck = 0; //base paycheck
            paycheckEveryTick = 4; //paycheck every x client ticks
            vehicleSpawnDelay = 600;
            minDistance = 200;
            paycheckMultiplayer = 1;
      };
      class Jobs {
            class Taxi {
                  display = "STR_PUBLIC_JOBS_JOB_TAXI";
                  variable = "taxi";
                  paycheck = 0; //paycheck
                  show = 1; //show in phone book
                  class Functions {
                        start = "";
                        tick = "";
                        end = "";
                  };
                  limits[] = {
                        {2, 30},
                        {6, 90},
                        {10, 120}
                  };
                  variables[] = {};
                  class Vehicle {
                        vehicleClass = "";
                        variables[] = {
                              {"taxi_vehicle", true, true}
                        };
                        class Items {
                              items[] = {
                                    //{"name", 3} //class, count
                              };
                              backpack = "";
                        };
                  };
            };
      };
};
