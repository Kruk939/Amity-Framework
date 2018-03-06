class CfgPatches {
      class Amity_Server {
		units[] = {};
		weapons[] = {};
		requiredVersion = 1.0;
		requiredAddons[] = {};
      }
};
class CfgFunctions {
      class Server {
            class Init {
                  file = "Amity_Server\Functions\Core\Init"
                  class init {};
                  class initModules {};
                  class initPlayer {};
                  class initEventHandlers {};
                  class resetConnection {};
            };
            class Money {
                  file = "Amity_Server\Functions\Core\Money"
                  class handleCash {};
                  class handleBank {};
            };
            class Profile {
                  file = "Amity_Server\Functions\Core\Profile"
                  class createProfile {};
                  class setConnection {};
                  class saveProfile {};
            };
            class Vehicle {
                  file = "Amity_Server\Functions\Core\Vehicle"
                  class getGarage {};
                  class insertGarage {};
                  class getVehicle {};
                  class spawnVehicle {};
                  class saveVehicle {};
                  class storeVehicle {};

            };
      };
	class ExternalS {
		class ExtDB {
                  file = "Amity_Server\Functions\Core\ExtDB";
                  class ExtDBasync {};
                  class ExtDBinit {};
			class ExtDBstrip {};
			class ExtDBquery {};
		};
	};
      #include "Functions\Modules\Functions.hpp"
};
