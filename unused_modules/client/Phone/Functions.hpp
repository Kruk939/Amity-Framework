class ClientModules_Phone {
      class Init {
            file="Functions\Modules\Phone\Functions\Init";
            class initEventHandlers {};
            class initListeners {};
            class initMenu {};
            class initPlayer {};
            class initVariables {};
            class receive {};
      };
      class Misc {
            file="Functions\Modules\Phone\Functions\Misc";
            class getBackground {};
            class getCardBackground {};
            class getFrame {};
            class getOffer {};
            class getRingtone {};
            class getPlayerByNumber {};
            class checkNumber {};
            class volumeControl {};
            class disablePhone {};
            class getServiceCategories {};
            class addServiceCategory {};
      };
      class Contacts {
            file="Functions\Modules\Phone\Functions\Contacts";
            class addContact {};
            class findContact {};
            class receiveContact {};
            class removeContact {};
            class updateContact {};
      };
      class Messages {
            file="Functions\Modules\Phone\Functions\Messages";
            class addMessage {};
            class sendMessage {};
      };
      class Numbers {
            file="Functions\Modules\Phone\Functions\Numbers";
            class addSim {};
            class loadSim {};
            class removeSim {};
            class receiveNumber {};
            class handleBalance {};
      };
      class Caller {
            file="Functions\Modules\Phone\Functions\Calls\Caller";
            class call {};
            class receiveTarget {};
      };
      class Calls_misc {
            file="Functions\Modules\Phone\Functions\Calls\Misc";
            class call_loop {};
            class checkGroup {};
            class generateFreq {};
            class getAllUsedFreq {};
            class reset_status {};
      };
      class Target {
            file="Functions\Modules\Phone\Functions\Calls\Target";
            class acceptCall {};
            class receiveCall {};
            class rejectCall {};
      };
      class Controllers_contactAdd {
		file = "Functions\modules\Phone\Functions\Controllers\ContactAdd";
            class contactAdd_action {};
            class contactAdd_open {};
	};
	class Controllers_contacts {
		file = "Functions\modules\Phone\Functions\Controllers\Contacts";
            class contacts_action {};
            class contacts_open {};
	};
	class Controllers_messages {
		file = "Functions\modules\Phone\Functions\Controllers\Messages";
            class messages_action {};
            class messages_open {};
	};
	class Controllers_message_new {
		file = "Functions\modules\Phone\Functions\Controllers\Message_new";
            class message_new_action {};
            class message_new_open {};
	};
	class Controllers_phone {
		file = "Functions\modules\Phone\Functions\Controllers\Phone";
            class phone_action {};
            class phone_open {};
            class setBackground {};
	};
	class Controllers_changesim {
		file = "Functions\modules\Phone\Functions\Controllers\ChangeSim";
            class changeSim_action {};
            class changeSim_open {};
	};
	class Controllers_customize {
		file = "Functions\modules\Phone\Functions\Controllers\Customize";
            class customize_action {};
            class customize_open {};
	};
	class Controllers_lastcalls {
		file = "Functions\modules\Phone\Functions\Controllers\LastCalls";
            class lastCalls_action {};
            class lastCalls_open {};
	};
	class Controllers_services {
		file = "Functions\modules\Phone\Functions\Controllers\Services";
            class services_action {};
            class services_open {};
	};
	class Controllers_add_founds {
		file = "Functions\modules\Phone\Functions\Controllers\AddFounds";
            class AddFounds_action {};
            class AddFounds_open {};
	};
};
