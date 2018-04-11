params[["_class", ""], ["_type",""]];
if(_class == "" || _type == "") exitWith {};
if(!dialog) exitWith {};
if(!Shop_var_preview) exitWith {};

if(_type == "uniform") exitWith {
      player forceAddUniform _class;
};

if(_type == "backpack") exitWith {
      removeBackpack player;
      player addBackpack _class;
};

if(_type == "face") exitWith {
      removeGoggles player;
      player addGoggles _class;
};

if(_type == "head") exitWith {
      removeHeadgear player;
      player addHeadgear _class;
};

if(_type == "vest") exitWith {
      removeVest player;
      player addVest _class;
};
