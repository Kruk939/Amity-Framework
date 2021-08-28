class ServerModules_Jail {
      class Init {
            file = "Amity_Server\Functions\Modules\Jail";
            class init {};
      };
      class Locker {
            file = "Amity_Server\Functions\Modules\Jail\Functions\Locker";
            class allLockers {};
            class closeLocker {};
            class openLocker {};
      };
      class Jail {
            file = "Amity_Server\Functions\Modules\Jail\Functions\Jail";
            class getSentences {};
            class jailPlayer {};
            class updateSentence {};
            class updateStatus {};
            class getJailSentences {};
      };
};
