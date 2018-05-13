class Growing {
      class Config {
            proximity = 2;
            maxPlants = 7;
            tick = 1;
            class Fire {
                  enable = 1;
                  burnEquipment[] = {
                        "RPF_Items_Matches",
                        "murshun_cigs_lighter",
                        "CG_ATF_Matchbox_i",
                        "murshun_cigs_matches"
                  };
                  fireClass = "test_EmptyObjectForFireBig";
                  moveChance = 70;
                  moveMaxDistance = 7;
                  tick = 0.5;
                  class Time {
                        settingUp = 10;
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
                        name = "STR_GROWING_PLANT_WEED";
                        position[] = {0,0,0.8};
                  };
                  surface = "#amity_grass_green_Surface";
                  attach[] = {0, 1.3, -1};
                  positions[] = {
                        {{973.288,7335.59,0.139845}, 2000}
                  };
                  variable = "weed";
                  equipment[] = {
                        {"Land_Portable_generator_F", 20, "STR_GROWING_NO_GENERATOR"},
                        {"Land_PortableLight_double_F", 20, "STR_GROWING_NO_LIGHT"},
                        {"CamoNet_ghex_F", 20, "STR_GROWING_NO_CAMONET"}
                  };
                  class Growing {
                        class Functions {
                              grow = "";
                              check = "";
                              action = "";
                              harvest = "";
                        };
                        harvest[] = {
                              {10, "openrp_weedbag", 10},
                              {40, "openrp_weedbag", 5},
                              {80, "openrp_weedbag", 2}
                        };
                        variables[] = {
                              {"plant_water", 10, 0, 2},
                              {"plant_fertilizer", 10, 0, 3}
                        };
                        actions[] = {
                              {"water", 7, "STR_GROWING_PLANT_ACTION_WATER", "plant_water", 10, "openrp_watercan", 1, ""},
                              {"fertilize", 7, "STR_GROWING_PLANT_ACTION_FERTILIZE", "plant_fertilizer", 10, "openrp_fertilizer", 1, ""}
                        };
                        levels[] = {
                              {"plant_water", {
                                    {0, 10, 1, "STR_GROWING_CHECK_NOT_MUCH"},
                                    {10, 15, 0, "STR_GROWING_CHECK_GOOD"},
                                    {15, 20, -1, "STR_GROWING_CHECK_GOOD"},
                                    {20, 25, 0, "STR_GROWING_CHECK_GOOD"},
                                    {25, 30, 1, "STR_GROWING_CHECK_LITTLE_TOO_MUCH"},
                                    {30, 40, 3, "STR_GROWING_CHECK_TOO_MUCH"}
                              }},
                              {"plant_fertilizer", {
                                    {0, 10, 1, "STR_GROWING_CHECK_NOT_MUCH"},
                                    {10, 20, -1, "STR_GROWING_CHECK_GOOD"},
                                    {20, 30, 1, "STR_GROWING_CHECK_LITTLE_TOO_MUCH"},
                                    {30, 40, 3, "STR_GROWING_CHECK_TOO_MUCH"}
                              }},
                        };
                        class Grow {
                              every = 30;
                              remove = 20;
                              good = 0.14;
                              bad = 0.07;
                        };
                  };
            };
            class Poppy {
                  seed = "openrp_poppyseed";
                  plant = "OpenRP_poppyplant";
                  class Menu {
                        name = "STR_GROWING_POPPY";
                        position[] = {0,0,0.8};
                  };
                  surface = "#amity_grass_green_Surface";
                  attach[] = {[0, 1.3, -0.4};
                  positions[] = {
                        {{973.288,7335.59,0.139845}, 2000}
                  };
                  variable = "poppy";
                  equipment[] = {
                        {"Land_Portable_generator_F", 20, "STR_GROWING_NO_GENERATOR"},
                        {"Land_PortableLight_double_F", 20, "STR_GROWING_NO_LIGHT"},
                        {"CamoNet_ghex_F", 20, "STR_GROWING_NO_CAMONET"}
                  };
                  class Growing {
                        class Functions {
                              grow = "";
                              check = "";
                              action = "";
                              harvest = "";
                        };
                        harvest[] = {
                              {10, "openrp_cutpoppyplant", 10},
                              {40, "openrp_cutpoppyplant", 5},
                              {80, "openrp_cutpoppyplant", 2}
                        };
                        variables[] = {
                              {"plant_water", 5, 0, 5},
                              {"plant_fertilizer", 0, 0, 10}
                        };
                        actions[] = {
                              {"water", 10, "STR_GROWING_PLANT_ACTION_WATER", "plant_water", 10, "openrp_watercan", 1, ""},
                              {"fertilize", 10, "STR_GROWING_PLANT_ACTION_FERTILIZE", "plant_fertilizer", 10, "openrp_fertilizer", 1, ""}
                        };
                        levels[] = {
                              {"plant_water", {
                                    {0, 10, 1, "STR_GROWING_CHECK_NOT_MUCH"},
                                    {10, 20, 0, "STR_GROWING_CHECK_GOOD"},
                                    {20, 30, 1, "STR_GROWING_CHECK_LITTLE_TOO_MUCH"},
                                    {30, 40, 3, "STR_GROWING_CHECK_TOO_MUCH"}
                              }},
                              {"plant_fertilizer", {
                                    {0, 10, 1, "STR_GROWING_CHECK_NOT_MUCH"},
                                    {10, 20, 0, "STR_GROWING_CHECK_GOOD"},
                                    {20, 30, 1, "STR_GROWING_CHECK_LITTLE_TOO_MUCH"},
                                    {30, 40, 3, "STR_GROWING_CHECK_TOO_MUCH"}
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
