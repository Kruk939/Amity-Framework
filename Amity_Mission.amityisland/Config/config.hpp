class Amity {
      class Setup {
            modules[] = {
                  "ClientModules_Example"
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
                  addAction = "";
                  spawn = "";
            };
            class Dialogs {
                  atm = "client_atm"; //idd = 1010;
                  interaction = "client_interaction"; //idd 1020;
                  profile = "client_profile"; //idd = 1000;
                  createProfile = "client_profile_create"; //idd = 1001;
                  garage = "client_garage"; //idd = 1005;
            };
      };
};
