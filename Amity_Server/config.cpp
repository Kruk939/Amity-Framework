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
            };
            class Money {
                  file = "Amity_Server\Functions\Core\Money"
                  class handleCash {};
                  class handleBank {};
            };
            class Profile {
                  file = "Amity_Server\Functions\Core\Profile"
                  class createProfile {};
                  class resetConnection {};
                  class setConnection {};
                  class saveProfile {};
            };
            class Garage {
                  file = "Amity_Server\Functions\Core\Garage"
                  class garageGet {};
                  class insertGarage {};
                  class getVehicle {};
                  class spawnVehicle {};

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
