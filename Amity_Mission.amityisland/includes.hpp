//include configs
#include "Config\Config.hpp"
#include "Functions\Modules\Config.hpp"

//include dialogs
#include "Dialogs\Dialogs.hpp"
#include "Functions\Modules\Dialogs.hpp"


//include Functions
class CfgFunctions {
      class Client {
            #include "Functions\Core\Functions.hpp"
      };
      class ClientModules {
            #include "Functions\Modules\Functions.hpp"
      };
};

//include sounds
class CfgSounds {
      #include "Config\Sounds.hpp"
};

//include RscTitles
class RscTitles {
      #include "RscTitles\RscTitles.hpp"
      #include "Functions\Modules\RscTitles.hpp"
};
