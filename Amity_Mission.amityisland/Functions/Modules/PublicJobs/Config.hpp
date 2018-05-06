class PublicJobs {
      class Config {
            paycheck = 0; //base paycheck
            paycheckEveryTick = 4; //paycheck every x client ticks
            vehicleSpawnDelay = 600;
            minDistance = 200;
            paycheckMultiplayer = 1;
            class Marker {
                  shape = "ICON";
                  type = "hd_dot";
                  color = "ColorRed";
            };
      };
      class Jobs {
            class Taxi {
                  display = "STR_PUBLIC_JOBS_JOB_TAXI";
                  variable = "taxi";
                  paycheck = 0; //paycheck
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
                              {"taxi_vehicle", 1, 0, "BOOL"}
                        };
                        class Items {
                              items[] = {
                                    //{"name", 3} //class, count
                              };
                              backpack = "";
                        };
                  };
            };
            class Mechanic {
                  display = "STR_PUBLIC_JOBS_JOB_MECHANIC";
                  variable = "mechanic";
                  paycheck = 100; //paycheck
                  show = 1; //show in phone book
                  uniform = "CUP_U_C_Mechanic_01";
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
                  variables[] = {};
                  class Vehicle {
                        vehicleClass = "openrp_transit_repair_blank";
                        variables[] = {};
                        class Items {
                              items[] = {
                                    {"CUP_U_C_Mechanic_01", 1},
                                    {"CG_wheel", 8},
                                    {"H_Construction_basic_orange_F", 1},
                                    {"V_Safety_orange_F", 1}
                              };
                              backpack = "";
                        };
                  };
                  class Setup {
                        rapairFee = 200;
                  };
            };
            class TowTruck {
                  display = "STR_PUBLIC_JOBS_JOB_TOW_TRUCK";
                  variable = "towtruck";
                  paycheck = 100; //paycheck
                  show = 1; //show in phone book
                  uniform = "CUP_U_C_Mechanic_01";
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
                        vehicleClass = "Jonzie_Tow_Truck";
                        variables[] = {};
                        class Items {
                              items[] = {};
                              backpack = "";
                        };
                  };
            };
      };
};
