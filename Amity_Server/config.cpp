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
            class Logs {
                  file = "Amity_Server\Functions\Core\Logs"
                  class logEvent {};
            };
            class Money {
                  file = "Amity_Server\Functions\Core\Money"
                  class handleCash {};
                  class handleBank {};
                  class bankCreate {};
                  class bankGetID {};
                  class bankGetProfile {};
                  class bankRemove {};
                  class bankTransfer {};
                  class bankGetAccount {};
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
                  class deleteVehicle {};
                  class vehicleFullRepair {};
                  class generatePlate {};
                  class vehicleExistsPlate {};
            };
            class Faction {
                  file = "Amity_Server\Functions\Core\Factions"
                  class factionAddMember {};
                  class factionBankTransfer {};
                  class factionChangeOwner {};
                  class factionCreate {};
                  class factionGet {};
                  class factionGetMembers {};
                  class factionRemove {};
                  class factionRemoveMember {};
                  class factionUpdate {};
                  class memberGetFactions {};
                  class memberGet {};
                  class memberUpdate {};
                  class factionPayCheck {};
                  class factionGetGarage {};
                  class factionSaveVehicle {};
                  class factionViewData {};
            };
            class Variables {
                  file = "Amity_Server\Functions\Core\Variables"
                  class variableSet {};
                  class variableUnSet {};
                  class variableInsert {};
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
