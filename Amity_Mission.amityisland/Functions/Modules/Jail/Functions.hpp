class ClientModules_Jail {
      class Init {
            file="Functions\Modules\Jail\Functions\Init";
            class initEventHandlers {};
            class initListeners {};
            class initMenu {};
            class initPlayer {};
            class initVariables {};
            class receive {};
      };
      class Locker {
            file="Functions\Modules\Jail\Functions\Locker";
            class closeLocker {};
            class findLocker {};
            class openLocker {};
      };
      class Misc {
            file="Functions\Modules\Jail\Functions\Misc";
            class jail_getConfig {};
            class jail_getConfigs {};
            class jail_getNearest {};
            class jail_getSecurity {};
      };
      class Dialog {
            file="Functions\Modules\Jail\Functions\Dialog";
            class jail_insert_action {};
            class jail_insert_open {};
            class jail_lockers_action {};
            class jail_lockers_open {};
            class jail_lockers_receive {};
            class jail_sentences_action {};
            class jail_sentences_open {};
            class jail_sentences_receive {};
      };
      class Jail {
            file="Functions\Modules\Jail\Functions\Jail";
            class getRemaining {};
            class jailLoop {};
            class jailPlayer {};
      };
};
