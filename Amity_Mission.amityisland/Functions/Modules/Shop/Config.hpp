class Shop {
      basic[] = {
            {"STR_SHOP_CLOTHES", 1, "openrp_vendor_clothingstore"},
            {"STR_SHOP_WEAPON", 2, "openrp_vendor_gunshop"},
            {"STR_SHOP_GENERAL", 3, "openrp_vendor_shop"},
            {"STR_SHOP_FOOD", 4, "openrp_vendor_foodshop"},
            {"STR_SHOP_BLACK_MARKET", 5, "openrp_vendor_blackmarket"},
            {"STR_SHOP_BLACK_DILER", 6, "openrp_vendor_blackmarket"},
            {"STR_SHOP_INGOTS", 7, "openrp_vendor_shop"}
      };
      faction[] = {
            {"STR_SHOP_FACTION_PD", 9, "openrp_vendor_PDsignin", 5, {4632.54,1872.02,0.053587}, 5},
            {"STR_SHOP_FACTION_EMS_CLOTHES", 10, "openrp_vendor_EMSsignin", 6, {4907.79,2811.61,0.818819}, 20},
            {"STR_SHOP_FACTION_EMS_WEAPONS", 11, "openrp_vendor_EMSsignin", 6, {4907.79,2811.61,0.818819}, 20},
            {"STR_SHOP_FACTION_EMS_GENERAL", 12, "openrp_vendor_EMSsignin", 6, {4907.79,2811.61,0.818819}, 20},
      };
      sell = 1.2;
      buy = 0.8;
      class Holder {
            maxDistance = 100;
            holderClass = "plp_ct_woodboxlightsmall";
      };
};
