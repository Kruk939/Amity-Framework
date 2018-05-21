params[["_class", ""], ["_type",""]];
if(_class == "" || _type == "") exitWith {};
if(!dialog) exitWith {};
if(!Shop_var_preview || Shop_var_view_lock) exitWith {};

Shop_var_view_lock = true;
if(_type == "uniform") exitWith {
      player forceAddUniform _class;
      Shop_var_view_lock = false;
};

if(_type == "backpack") exitWith {
      removeBackpack player;
      player addBackpack _class;
      Shop_var_view_lock = false;
};

if(_type == "face") exitWith {
      removeGoggles player;
      player addGoggles _class;
      Shop_var_view_lock = false;
};

if(_type == "head") exitWith {
      removeHeadgear player;
      player addHeadgear _class;
      Shop_var_view_lock = false;
};

if(_type == "vest") exitWith {
      removeVest player;
      player addVest _class;
      Shop_var_view_lock = false;
};
Shop_var_view_lock = false;
