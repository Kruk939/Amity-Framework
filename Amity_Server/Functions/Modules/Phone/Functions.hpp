class ServerModules_Phone {
      class Init {
            file = "Amity_Server\Functions\Modules\Phone"
            class init {};
      };
      class Misc {
            file = "Amity_Server\Functions\Modules\Phone\Functions\Misc"
            class load {};
            class initPlayer {};
      };
      class Calls {
            file = "Amity_Server\Functions\Modules\Phone\Functions\Calls"
            class call {};
      };
      class Contacts {
            file = "Amity_Server\Functions\Modules\Phone\Functions\Contacts"
            class addContact {};
            class removeContact {};
            class updateContact {};
      };
      class Messages {
            file = "Amity_Server\Functions\Modules\Phone\Functions\Messages"
            class insertMessage {};
      };
};
