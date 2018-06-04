private _array = [];

//Shop actions
if(!isNil "Shop_var_initialized") then {
      private _classes = [];
      private _basic = getArray(missionConfigFile >> "Shop" >> "basic");
      {
            _x params["", "_id", "_class"];
            if(!(_class IN _classes)) then {
                  private _code = format["[_target, %1] call ClientModules_Robbery_fnc_robShop;", _id];
                  _code = compile _code;
                  _array pushBack [
                        [format["SHOP_BASIC_%1", _forEachIndex], localize "STR_ROBBERY_ROB_SHOP", "", _code,{true},{},"","screenloc",3],
                        ["class", [_class, 0, ["ACE_MainActions"]]]
                  ];
                  _classes pushBack _class;
            };
      } forEach _basic;
};


//ATM actions
private _atm_config = (missionConfigFile >> "Robbery" >> "ATM");
_array pushBack [
      ["ROBBERY_ATM_ROB",localize "STR_ROBBERY_DRILL_PLACE", "", {[_target] call ClientModules_Robbery_fnc_placeDrillATM;},{ private _config = (missionConfigFile >> "Robbery" >> "Config" >> "Drill"); private _item = getText(_config >> "item"); !(_item != "" && ([_item] call Client_fnc_countItems) == 0 && !(_target getVariable["robbery_has_drill", false])); },{},"",[0,-0.2,0],3],
      ["class",[getText(_atm_config >> "atmClass"), 0, []]]
];


//Bank actions
private _main_bank_config = (missionConfigFile >> "Robbery" >> "MainBank");
_array pushBack [
      ["ROBBERY_MAIN_BANK_ROB",localize "STR_ROBBERY_DRILL_PLACE", "", {[_target] call ClientModules_Robbery_fnc_placeDrillMainBank},{ private _config = (missionConfigFile >> "Robbery" >> "Config" >> "Drill"); private _item = getText(_config >> "item"); !(_item != "" && ([_item] call Client_fnc_countItems) == 0 && !(_target getVariable["robbery_has_drill", false])); },{},"",[0.5,-0.68,0],3],
      ["class",[getText(_main_bank_config >> "Safe" >> "safe"), 0, []]]
];

_array pushBack [
      ["ROBBERY_MAIN_BANK_TAKE_CASE", localize "STR_ROBBERY_MAIN_BANK_TAKE_CASE", "", {[_target] call ClientModules_Robbery_fnc_pickUpBankCase},{ _target getVariable["value", 0] != 0 },{},"","",5],
      ["class",[getText(_main_bank_config >> "Reward" >> "Case" >> "item"), 0, []]]
];

//crashVault
_array pushBack [
      ["ROBBERY_MAIN_BANK_USE_CRASH",(getText(_main_bank_config >> "crashVault" >> "action")) call BIS_fnc_localize, "", {[_target, "vault"] call ClientModules_Robbery_fnc_unlockDoorMainBank},{ private _config = (missionConfigFile >> "Robbery" >> "MainBank" >> "crashVault"); private _item = getText(_config >> "item"); !(_item != "" && ([_item] call Client_fnc_countItems) == 0); },{},"", getText(_main_bank_config >> "crashVault" >> "memoryPoint"),3],
      ["class",[getText(_main_bank_config >> "crashVault" >> "objClass"), 0, []]]
];

//crashVault
_array pushBack [
      ["ROBBERY_MAIN_BANK_USE_CRASH",(getText(_main_bank_config >> "crashVault" >> "action")) call BIS_fnc_localize, "", {[_target, "vault"] call ClientModules_Robbery_fnc_unlockDoorMainBank},{ private _config = (missionConfigFile >> "Robbery" >> "MainBank" >> "crashVault"); private _item = getText(_config >> "item"); !(_item != "" && ([_item] call Client_fnc_countItems) == 0); },{},"", getText(_main_bank_config >> "crashVault" >> "memoryPoint"),3],
      ["class",[getText(_main_bank_config >> "crashVault" >> "objClass"), 0, []]]
];

//grind
_array pushBack [
      ["ROBBERY_MAIN_BANK_USE_GRIND",(getText(_main_bank_config >> "Grind" >> "action")) call BIS_fnc_localize, "", {[_target, "grind"] call ClientModules_Robbery_fnc_unlockDoorMainBank},{ private _config = (missionConfigFile >> "Robbery" >> "MainBank" >> "Grind"); private _item = getText(_config >> "item"); !(_item != "" && ([_item] call Client_fnc_countItems) == 0); },{},"", getText(_main_bank_config >> "Grind" >> "memoryPoint"),3],
      ["class",[getText(_main_bank_config >> "Grind" >> "objClass"), 0, []]]
];




_array call Client_fnc_addAction;
