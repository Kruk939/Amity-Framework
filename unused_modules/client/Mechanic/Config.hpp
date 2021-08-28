class Mechanic {
      class Config {
            animation = "AmovPknlMstpSrasWrflDnon";
      };
      class Items {
            mechanicKit = "openrp_mechanic_kit";
            fuelCanister = "openrp_canister_fuel";
      };
      class PaintJob {
            paintGun = "openrp_mechanic_paint_gun";
            paintCan = "openrp_mechanic_paint_can";
      };
      class Repair {
            class Wheel {
                  item = "CG_wheel";
                  variable = "wheel";
                  type = 0; //0 - specyfic, 1 - random from selection, 2 - random, having word in name
                  remove = 1;
                  selection[] = {"HitLFWheel","HitLF2Wheel","HitRFWheel","HitRF2Wheel"};
                  variables[] = {}; //name, level
                  locations[] = {}; //{pos, distance}
                  time = 15;
                  class Message {
                        progress = "STR_MECHANIC_REPAIR_PART_WHEEL_PROGRESS";
                        success = "STR_MECHANIC_REPAIR_PART_WHEEL_SUCCESS";
                        noItem = "STR_MECHANIC_REPAIR_NO_ITEM";
                        noLocation = "STR_MECHANIC_REPAIR_NO_LOCATION";
                        noVariable = "STR_MECHANIC_REPAIR_NO_VARIABLE";
                  };
            };
            class Engine {
                  item = "openrp_mechanic_enigne_part";
                  remove = 1;
                  type = 1;
                  variable = "engine";
                  selection[] = {"hitengine"};
                  variables[] = {"module_mechanic", 1};
                  locations[] = {
                        {{4766.67,1908.17,0.00143909}, 20},
                        {{3414.15,5231.06,0.00143909}, 20},
                        {{4835.13,2057.06,0.00143909}, 20},
                        {{2527.33,4337.83,0.00143909}, 20}
                  };
                  time = 15;
                  class Message {
                        progress = "STR_MECHANIC_REPAIR_PART_ENGINE_PROGRESS";
                        success = "STR_MECHANIC_REPAIR_PART_ENGINE_SUCCESS";
                        noItem = "STR_MECHANIC_REPAIR_NO_ITEM";
                        noLocation = "STR_MECHANIC_REPAIR_NO_LOCATION";
                        noVariable = "STR_MECHANIC_REPAIR_NO_VARIABLE";
                  };
            };
            class FuelTank {
                  item = "openrp_mechanic_hull_part";
                  remove = 1;
                  type = 1;
                  variable = "fuelTank";
                  selection[] = {"hitfuel"};
                  variables[] = {"module_mechanic", 1};
                  locations[] = {
                        {{4766.67,1908.17,0.00143909}, 20},
                        {{3414.15,5231.06,0.00143909}, 20},
                        {{4835.13,2057.06,0.00143909}, 20},
                        {{2527.33,4337.83,0.00143909}, 20}
                  };
                  time = 15;
                  class Message {
                        progress = "STR_MECHANIC_REPAIR_PART_FUELTANK_PROGRESS";
                        success = "STR_MECHANIC_REPAIR_PART_FUELTANK_SUCCESS";
                        noItem = "STR_MECHANIC_REPAIR_NO_ITEM";
                        noLocation = "STR_MECHANIC_REPAIR_NO_LOCATION";
                        noVariable = "STR_MECHANIC_REPAIR_NO_VARIABLE";
                  };
            };
            class Hull {
                  item = "openrp_mechanic_hull_part";
                  remove = 1;
                  type = 1;
                  variable = "hull";
                  selection[] = {"hitbody","hitlbwheel","hitlmwheel","hitrbwheel","hitrmwheel","hithull"};
                  variables[] = {"module_mechanic", 1};
                  locations[] = {
                        {{4766.67,1908.17,0.00143909}, 20},
                        {{3414.15,5231.06,0.00143909}, 20},
                        {{4835.13,2057.06,0.00143909}, 20},
                        {{2527.33,4337.83,0.00143909}, 20}
                  };
                  time = 15;
                  class Message {
                        progress = "STR_MECHANIC_REPAIR_PART_HULL_PROGRESS";
                        success = "STR_MECHANIC_REPAIR_PART_HULL_SUCCESS";
                        noItem = "STR_MECHANIC_REPAIR_NO_ITEM";
                        noLocation = "STR_MECHANIC_REPAIR_NO_LOCATION";
                        noVariable = "STR_MECHANIC_REPAIR_NO_VARIABLE";
                  };
            };
            class Glass {
                  item = "openrp_mechanic_glass";
                  remove = 1;
                  type = 2;
                  variable = "glass";
                  selection[] = {"glass", "light"};
                  variables[] = {};
                  locations[] = {};
                  time = 15;
                  class Message {
                        progress = "STR_MECHANIC_REPAIR_PART_GLASS_PROGRESS";
                        success = "STR_MECHANIC_REPAIR_PART_GLASS_SUCCESS";
                        noItem = "STR_MECHANIC_REPAIR_NO_ITEM";
                        noLocation = "STR_MECHANIC_REPAIR_NO_LOCATION";
                        noVariable = "STR_MECHANIC_REPAIR_NO_VARIABLE";
                  };
            };
      };
};
