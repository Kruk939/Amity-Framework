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
