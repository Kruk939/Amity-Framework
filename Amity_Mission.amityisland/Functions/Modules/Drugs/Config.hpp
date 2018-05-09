class Drugs {
      class Config {
            proximity = 2;
            maxPlants = 7;
            tick = 1;
            class Fire {
                  burnEquipment[] = {
                        "RPF_Items_Matches",
                        "murshun_cigs_lighter",
                        "CG_ATF_Matchbox_i",
                        "murshun_cigs_matches"
                  };
                  fireClass = "test_EmptyObjectForFireBig";
                  moveChance = 80;
                  moveMaxDistance = 10;
                  class Time {
                        minDelay = 3;
                        maxDelay = 10;
                        minDuration = 50;
                        maxDuration = 120;
                  };
            };

      };
      class UsableItems {
            equipment[] = {
                  {"openrp_net", "CamoNet_ghex_F"},
                  {"openrp_generator", "Land_Portable_generator_F"},
                  {"openrp_lamp", "Land_PortableLight_double_F"},
                  {"openrp_druglabitem", "Land_openrp_druglab"}
            };
      };
      class Plants {
            class Weed {
                  seed = "openrp_weedseed";
                  plant = "vvv_cannabis1_plan";
                  class Menu {
                        name = "STR_DRUGS_PLANT_WEED";
                        position[] = {0,0,0.8};
                  };
                  surface = "#amity_grass_green_Surface";
                  attach[] = {0, 1.3, -1};
                  positions[] = {
                        {{973.288,7335.59,0.139845}, 2000}
                  };
                  variable = "weed";
                  equipment[] = {
                        {"Land_Portable_generator_F", 20, "STR_DRUGS_NO_GENERATOR"},
                        {"Land_PortableLight_double_F", 20, "STR_DRUGS_NO_LIGHT"},
                        {"CamoNet_ghex_F", 20, "STR_DRUGS_NO_CAMONET"}
                  };
                  class Growing {
                        class Functions {
                              grow = "";
                              check = "";
                              action = "";
                              harvest = "";
                        };
                        harvest[] = {
                              {10, "openrp_weedbag", 3},
                              {99, "openrp_weedbag", 3}
                        };
                        variables[] = {
                              {"plant_water", 5, 0, 5},
                              {"plant_fertilizer", 0, 0, 10}
                        };
                        actions[] = {
                              {"water", 10, "STR_DRUGS_PLANT_ACTION_WATER", "plant_water", 10, "openrp_watercan", 1, ""},
                              {"fertilize", 10, "STR_DRUGS_PLANT_ACTION_FERTILIZE", "plant_fertilizer", 10, "openrp_fertilizer", 1, ""}
                        };
                        levels[] = {
                              {"plant_water", {
                                    {0, 10, 1, "STR_DRUGS_CHECK_NOT_MUCH"},
                                    {10, 20, 0, "STR_DRUGS_CHECK_GOOD"},
                                    {20, 30, 1, "STR_DRUGS_CHECK_LITTLE_TOO_MUCH"},
                                    {30, 40, 3, "STR_DRUGS_CHECK_TOO_MUCH"}
                              }},
                              {"plant_fertilizer", {
                                    {0, 10, 1, "STR_DRUGS_CHECK_NOT_MUCH"},
                                    {10, 20, 0, "STR_DRUGS_CHECK_GOOD"},
                                    {20, 30, 1, "STR_DRUGS_CHECK_LITTLE_TOO_MUCH"},
                                    {30, 40, 3, "STR_DRUGS_CHECK_TOO_MUCH"}
                              }},
                        };
                        class Grow {
                              every = 30;
                              remove = 10;
                              good = 0.14;
                              bad = 0.07;
                        };
                  };
            };
            class Poppy {
                  seed = "openrp_poppyseed";
                  plant = "OpenRP_poppyplant";
                  class Menu {
                        name = "STR_DRUGS_POPPY";
                        position[] = {0,0,0.8};
                  };
                  surface = "#amity_grass_green_Surface";
                  attach[] = {[0, 1.3, -0.4};
                  positions[] = {
                        {{973.288,7335.59,0.139845}, 2000}
                  };
                  variable = "poppy";
                  equipment[] = {
                        {"Land_Portable_generator_F", 20, "STR_DRUGS_NO_GENERATOR"},
                        {"Land_PortableLight_double_F", 20, "STR_DRUGS_NO_LIGHT"},
                        {"CamoNet_ghex_F", 20, "STR_DRUGS_NO_CAMONET"}
                  };
                  class Growing {
                        class Functions {
                              grow = "";
                              check = "";
                              action = "";
                              harvest = "";
                        };
                        harvest[] = {
                              {0, "class", 5}
                        };
                        variables[] = {
                              {"plant_water", 5, 0, 5},
                              {"plant_fertilizer", 0, 0, 10}
                        };
                        actions[] = {
                              {"water", 10, "STR_DRUGS_PLANT_ACTION_WATER", "plant_water", 10, "openrp_watercan", 1, ""},
                              {"fertilize", 10, "STR_DRUGS_PLANT_ACTION_FERTILIZE", "plant_fertilizer", 10, "openrp_fertilizer", 1, ""}
                        };
                        levels[] = {
                              {"plant_water", {
                                    {0, 10, 1, "STR_DRUGS_CHECK_NOT_MUCH"},
                                    {10, 20, 0, "STR_DRUGS_CHECK_GOOD"},
                                    {20, 30, 1, "STR_DRUGS_CHECK_LITTLE_TOO_MUCH"},
                                    {30, 40, 3, "STR_DRUGS_CHECK_TOO_MUCH"}
                              }},
                              {"plant_fertilizer", {
                                    {0, 10, 1, "STR_DRUGS_CHECK_NOT_MUCH"},
                                    {10, 20, 0, "STR_DRUGS_CHECK_GOOD"},
                                    {20, 30, 1, "STR_DRUGS_CHECK_LITTLE_TOO_MUCH"},
                                    {30, 40, 3, "STR_DRUGS_CHECK_TOO_MUCH"}
                              }},
                        };
                        class Grow {
                              every = 30;
                              remove = 10;
                              good = 0.14;
                              bad = 0.07;
                        };
                  };
            };
      };
};
