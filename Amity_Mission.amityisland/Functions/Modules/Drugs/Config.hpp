class Drugs {
      class Config {
            proximity = 2;
            maxPlants = 7;
            tick = 1;
      };
      class Plants {
            class Weed {
                  seed = "openrp_weedseed";
                  plant = "vvv_cannabis1_plan";
                  surface = "#amity_grass_green_Surface";
                  positions[] = {
                        {{973.288,7335.59,0.139845}, 2000}
                  };
                  variable = "weed";
                  variables[] = {

                  };
                  equipment[] = {
                        {"Land_Portable_generator_F", 20, "You Need to be near a Generator!"},
                        {"Land_PortableLight_double_F", 20, "You think you can grow without a light?!"},
                        {"CamoNet_ghex_F", 20, "You need a camonet. We don't want to get caught now do we?!"}
                  };
                  class Growing {
                        function = "";
                        check = "";
                        harvest[] = {

                        };
                        variables[] = {
                              {'plant_water', 5, 0, 5},
                              {'plant_fertilizer', 0, 0, 10}
                        };
                        actions[] = {
                              {"water", 10, "WATERING", "plant_water", 10, "openrp_watercan", 1},
                              {"fertilize", 10, "FERTILIZING", "plant_fertilizer", 10, "openrp_fertilizer", 1}
                        };
                        levels[] = {
                              {"plant_water", {
                                    {0, 10, 1, "NOT_MUCH"},
                                    {10, 20, 0, "GOOD"},
                                    {20, 30, 1, "LITTLE TO MUCH"},
                                    {20, 40, 3, "TOO MUCH!"}
                              }},
                              {"plant_fertilizer", {
                                    {0, 10, 1, "NOT_MUCH"},
                                    {10, 20, 0, "GOOD"},
                                    {20, 30, 1, "LITTLE TO MUCH"},
                                    {20, 40, 3, "TOO MUCH!"}
                              }}
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
                  surface = "#amity_grass_green_Surface";
                  positions[] = {
                        {{973.288,7335.59,0.139845}, 2000}
                  };
                  variable = "poppy";
                  variables[] = {

                  };
                  equipment[] = {
                        {"Land_Portable_generator_F", 20, "You Need to be near a Generator!"},
                        {"Land_PortableLight_double_F", 20, "You think you can grow without a light?!"},
                        {"CamoNet_ghex_F", 20, "You need a camonet. We don't want to get caught now do we?!"}
                  };
                  class Growing {
                        function = "";
                        check = "";
                        harvest[] = {

                        };
                        variables[] = {
                              {'plant_water', 5, 0},
                              {'plant_fertilizer', 0, 0}
                        };
                        actions[] = {
                              {"water", "plant_water", 10, "openrp_watercan", 1},
                              {"fertilize", "plant_fertilizer", 10, "", 0}
                        };
                  };
            };
      };
};
