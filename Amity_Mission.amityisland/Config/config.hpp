class Amity {
      class Setup {
            modules[] = {
            };
            loopTick = 60;
            genders[] = {
                  {"Male", "0"},
                  {"Female", "1"}
            };
            profiles = 3;
            class Start {
                  cash = 10000;
            };
            timeLock = 2;
      };
      class Custamization {
            class Functions {
                  domsg = "ClientModules_Notification_fnc_showNotification";
                  progressBar = "ace_common_fnc_progressBar";
                  addAction = "ClientModules_ACE_fnc_addAceInteraction";
                  checkPermission = "ClientModules_Permissions_fnc_checkPermission";
                  spawn = "";
            };
            class Dialogs {
                  atm = "styles_atm"; //idd = 1010;
                  interaction = "client_interaction"; //idd = 1020;
                  profile = "client_profile"; //idd = 1000;
                  createProfile = "client_profile_create"; //idd = 1001;
                  garage = "styles_garage"; //idd = 1005;
                  giveKeys = "client_give_keys"; //idd = 1006;
                  factionCreate = "styles_faction_create"; //idd = 1030
                  factionSign = "styles_faction_sign"; //idd = 1031
                  factionMembers = "styles_faction_members"; //idd = 1032
                  factionMemberEdit = "styles_faction_member_edit"; //idd = 1033
                  factionView = "styles_faction_view"; //idd = 1034
                  factionManageGarage = "styles_faction_manage_garage"; //idd 1035
            };
            class Sounds {
                  class Vehicle {
                        open = "amityrp_data\sounds\door_lock.ogg";
                        close = "amityrp_data\sounds\door_lock.ogg";
                  };
            };
      };
      class Misc {
            class Faction {
                  price[] = {
                        {"STR_FACTION_NAME_COMPANY", "company", 10000},
                        {"STR_FACTION_NAME_GANG", "gang", 50000}
                  };
            };
      };
};
