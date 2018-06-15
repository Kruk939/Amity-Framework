class ServerModules_Housing {
      class Init {
            file = "Amity_Server\Functions\Modules\Housing";
            class init {};
      };
      class Furniture {
            file = "Amity_Server\Functions\Modules\Housing\Functions\Furniture";
      };
      class House {
            file = "Amity_Server\Functions\Modules\Housing\Functions\House";
            class getHouse {};
            class getHouseID {};
            class getType {};
            class initHouse {};
      };
      class Misc {
            file = "Amity_Server\Functions\Modules\Housing\Functions\Misc";
            class initObjects {};
            class load {};
      };
      class Modules {
            file = "Amity_Server\Functions\Modules\Housing\Functions\Modules";
            class getModule {};
            class initModule {};
      };

};
