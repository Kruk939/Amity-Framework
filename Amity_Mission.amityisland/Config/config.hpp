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
      };
      class Custamization {
            class Functions {
                  domsg = "";
                  progressBar = "";
                  addAction = "ClientModules_ACE_fnc_addAceInteraction";
                  spawn = "";
            };
            class Dialogs {
                  atm = "client_atm"; //idd = 1010;
                  interaction = "client_interaction"; //idd = 1020;
                  profile = "client_profile"; //idd = 1000;
                  createProfile = "client_profile_create"; //idd = 1001;
                  garage = "client_garage"; //idd = 1005;
                  factionCreate = "client_faction_create"; //idd = 1030
                  factionSign = "client_faction_sign"; //idd = 1031
                  factionMembers = "client_faction_members"; //idd = 1032
                  factionMemberEdit = "client_faction_member_edit"; //idd = 1033
                  factionView = "client_faction_view"; //idd = 1034
                  factionManageGarage = "client_faction_manage_garage"; //idd 1035
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
