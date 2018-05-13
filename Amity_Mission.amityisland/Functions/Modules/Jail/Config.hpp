class Jail {
      class Setup {
            tickTime = 60;          //jail loop tick time
            updateEvery = 5;        //update every x ticks
            escapedMarker = 120;    //how long variable is set for player when he escapes
            autoCloseLocker = 120;  //how long until server automatilcly close locker
            class Permissions {
                  allLockersOpen = 5;     //jail_lockers_access
                  forceCloseLocker = 3;   //jail_lockers_access
                  jailPlayer = 0;         //jail_put_player
                  sentenceView = 3;       //jail_sentences
            };
            defaultJail = 1;
      };
      class Security {
            min[] = {0, "STR_JAIL_SECURITY_MIN"};
            medium[] = {1, "STR_JAIL_SECURITY_MEDIUM"};
            max[] = {2, "STR_JAIL_SECURITY_MAX"};
            superMax[] = {3, "STR_JAIL_SECURITY_SUPER_MAX"};
      };
      class Jails {
            class IslandJail {
                  id = 1;
                  name = "";
                  variable = "";
                  persistant = 1;   //save sentence in DB
                  class Release {
                        notify = 0; //notify faction on release or escape
                        teleport = 1; //teleport player on release location
                  };
                  class Notify {
                        factionIDs[] = {}; //faction ids to notify
                        minLevel = 0;
                        maxLevel = 10;
                  };
                  class Sentence {
                        min = 0;
                        max = -1;
                        securities[] = {0, 1, 2, 3};
                  };
                  class Locations {
                        position[] = {6371.681,5626.605,0.00143433};
                        radius = 300;
                        entryPoint[] = {};
                        release[] = {6369.82,5555.774,0.00143433};
                  };
                  class Items {
                        enable = 1; //add items to player when jailed
                        clear = 1;  //clear all his items
                        head = "";
                        face = "";
                        uniform = "openrp_prisonsuititem";
                        vest = "";
                        backpack = "";
                        items[] = {};
                  };
                  class Locker {
                        enable = 1;
                        position[] = {6369.82,5555.774,0.00143433};
                        objClass = "openrp_storage_wood";
                  };
            };
      };
};
