class ClientModules_PublicJobs {
      class Init {
            file="Functions\Modules\PublicJobs\Functions\Init";
            class initEventHandlers {};
            class initListeners {};
            class initMenu {};
            class initPlayer {};
            class initVariables {};
      };
      class Vehicle {
            file="Functions\Modules\PublicJobs\Functions\Vehicle";
            class removeVehicle {};
            class spawnVehicle {};
      };
      class Marker {
            file="Functions\Modules\PublicJobs\Functions\Marker";
            class addMarker {};
            class removeMarker {};
      };
      class Paycheck {
            file="Functions\Modules\PublicJobs\Functions\Paycheck";
            class addPaycheck {};
            class getPaycheck {};
      };
      class Misc {
            file="Functions\Modules\PublicJobs\Functions\Misc";
            class getActivePlayers {};
            class getConfig {};
            class getConfigs {};
            class getCurrentLimit {};
      };
      class Jobs_Misc {
            file="Functions\Modules\PublicJobs\Functions\Jobs";
            class start {};
            class stop {};
      };
      class Jobs_Taxi {
            file="Functions\Modules\PublicJobs\Functions\Jobs\Taxi";
      };
      class Jobs_Mechanic {
            file="Functions\Modules\PublicJobs\Functions\Jobs\Mechanic";
            class mechanic_start {};
            class mechanic_stop {};
            class mechanic_repair {};
      };
      class Jobs_Towtruck {
            file="Functions\Modules\PublicJobs\Functions\Jobs\Towtruck";
            class towtruck_start {};
            class towtruck_stop {};
            class towtruck_store {};
      };
      class Jobs_Delivery {
            file="Functions\Modules\PublicJobs\Functions\Jobs\Delivery";
            class delivery_deliverPackage {};
            class delivery_getPackage {};
            class delivery_loadPackage {};
            class delivery_getRandomShop {};
            class delivery_start {};
            class delivery_stop {};
            class delivery_unloadPackage {};
      };
      class Dialog {
            file="Functions\Modules\PublicJobs\Functions\Dialog";
            class public_job_action {};
            class public_job_open {};
      };
};
