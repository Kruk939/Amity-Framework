class PublicJobs {
      class Config {
            paycheck = 0; //base paycheck
            paycheckEveryTick = 4; //paycheck every x client ticks
            vehicleSpawnDelay = 600;
            minDistance = 200;
            paycheckMultiplayer = 1;
            class Marker {
                  shape = "ICON";
                  type = "hd_destroy";
                  color = "ColorBLUE";
            };
      };
      class Jobs {
            class Taxi {
                  display = "STR_PUBLIC_JOBS_JOB_TAXI";
                  condition = " !isNil ""taxi_var_initialized""";
                  variable = "taxi";
                  paycheck = 50; //paycheck
                  show = 1; //show in phone book
                  uniform = "";
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
                        vehicleClass = "openrp_mercedes_vito_taxi";
                        variables[] = {
                              {"taxi_vehicle", 1, 1, "BOOL"}
                        };
                        class Items {
                              items[] = {
                                    {"CG_wheel", 2}
                                    //{"name", 3} //class, count
                              };
                              backpack = "";
                        };
                  };
            };
            class Mechanic {
                  display = "STR_PUBLIC_JOBS_JOB_MECHANIC";
                  condition = " !isNil ""mechanic_var_initialized""";
                  variable = "mechanic";
                  paycheck = 50; //paycheck
                  show = 1; //show in phone book
                  uniform = "C_uniform_survivor3_l";
                  class Functions {
                        start = "ClientModules_PublicJobs_fnc_mechanic_start";
                        tick = "";
                        end = "ClientModules_PublicJobs_fnc_mechanic_stop";
                  };
                  limits[] = {
                        {2, 30},
                        {6, 90},
                        {10, 120}
                  };
                  variables[] = {{"module_mechanic", 1}};
                  class Vehicle {
                        vehicleClass = "openrp_transit_repair_blank";
                        variables[] = {};
                        class Items {
                              items[] = {
                                    {"C_uniform_survivor3_l", 1},
                                    {"CG_wheel", 8},
                                    {"openrp_mechanic_enigne_part", 4},
                                    {"openrp_mechanic_hull_part", 8},
                                    {"openrp_mechanic_glass", 6},
                                    {"H_Construction_basic_orange_F", 1},
                                    {"PATHuK_belt", 1}
                              };
                              backpack = "";
                        };
                  };
                  class Setup {
                        rapairFee = 200;
                        minDistance = 300;
                  };
            };
            class TowTruck {
                  display = "STR_PUBLIC_JOBS_JOB_TOW_TRUCK";
                  condition = "true";
                  variable = "towtruck";
                  paycheck = 100; //paycheck
                  show = 1; //show in phone book
                  uniform = "C_uniform_survivor3_l";
                  class Functions {
                        start = "ClientModules_PublicJobs_fnc_towtruck_start";
                        tick = "";
                        end = "ClientModules_PublicJobs_fnc_towtruck_stop";
                  };
                  limits[] = {
                        {2, 30},
                        {6, 90},
                        {10, 120}
                  };
                  variables[] = {};
                  class Vehicle {
                        vehicleClass = "Jonzie_Tow_Truck";
                        variables[] = {};
                        class Items {
                              items[] = {
                                    {"CG_wheel", 2},
                                    {"C_uniform_survivor3_l", 1},
                                    {"H_Construction_basic_orange_F", 1}
                              };
                              backpack = "";
                        };
                  };
                  class Setup {
                        towFee = 200;
                  };
            };
            class Delivery {
                  display = "STR_PUBLIC_JOBS_JOB_DELIVERY";
                  condition = "!isNil ""Shop_var_initialized""";
                  variable = "delivery";
                  paycheck = 50; //paycheck
                  show = 0; //show in phone book
                  uniform = "C_uniform_survivor3_l";
                  class Functions {
                        start = "ClientModules_PublicJobs_fnc_delivery_start";
                        tick = "";
                        end = "ClientModules_PublicJobs_fnc_delivery_stop";
                  };
                  limits[] = {
                        {2, 30},
                        {6, 90},
                        {10, 120}
                  };
                  variables[] = {};
                  class Vehicle {
                        vehicleClass = "pop_sprinter_2016_blanco";
                        variables[] = {{"delivery_vehicle", 1, 1, "BOOL"}};
                        class Items {
                              items[] = {
                                    {"CG_wheel", 2},
                                    {"C_uniform_survivor3_l", 1}
                              };
                              backpack = "";
                        };
                  };
                  class Setup {
                        boxClass = "plp_ct_woodboxlightsmall";
                        class Paycheck {
                              delivery = 400;
                              emptyCargoFine = 800;
                              sealUnlocked = 100;
                              countMismatch = 50;
                        };
                        class Random {
                              min = 10;
                              max = 30;
                        };
                        class Locations {
                              magazines[] = {
                                    {1, {4724.14,4690.23,0.00143862}, 10, {1, 2, 3, 4, 8}, 500, 2500}, //location, distance, shops, min distance, max distance
                                    {2, {4272.32,2453.9,0.00143909}, 10, {1, 2 ,3, 4, 8}, 300, 4500},
                                    {3, {4273.35,2409.04,0.00143862}, 10, {1, 2 ,3, 4, 8}, 300, 4500},
                                    {4, {3505.48,4159.1,0.00143909}, 10, {1, 2, 3, 4, 8}, 1000, 3500}
                              };
                        };
                  };
            };
      };
};
