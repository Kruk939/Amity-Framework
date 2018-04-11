params[["_item", []], ["_amount", 0]];
if(Crafting_var_crafting) exitWith {};
if(count _item == 0 || _amount == 0) exitWith {};

_item params["_id", "_class", "_type", "_a", "_time", "_faction_id", "_needed"];
private _i = [_class] call client_fnc_fetchItem;
if(count _i == 0) exitWith {};
_i params ["", "_display", "", "_desc"];

private _max = [_needed] call ClientModules_Crafting_fnc_craftingMax;
if(_max == 0) exitWith {};
Crafting_var_crafting = true;
if(_max < _amount) then { _amount = _max; };

private _onFinish = {
      (_this select 0) params["_item", "_amount"];
      _item params["_id", "_class", "_type", "_a", "_time", "_faction_id", "_needed"];
      private _i = [_class] call client_fnc_fetchItem;
      _i params ["", "_display", "", "_desc"];
      private _max = [_needed] call ClientModules_Crafting_fnc_craftingMax;
      if(_max < _amount) then { _amount = _max; };
      if(_amount > 0) then {
            if(isNull Shop_var_holder) then {
                  Crafting_var_holder = "plp_ct_woodboxlightsmall" createVehicleLocal (getpos player);
                  player disableCollisionWith Crafting_var_holder;
            } else {
                  if(player distance Crafting_var_holder > 100) then {
                        clearWeaponCargo Crafting_var_holder;
                        clearMagazineCargo Crafting_var_holder;
                        clearItemCargo Crafting_var_holder;
                        clearBackpackCargo Crafting_var_holder;
                  };
            };
            {
                  _x params["", "_class", "", "_a"];
                  private _count = (_a * _amount);
                  for [{_i=0}, {_i < _count}, {_i=_i+1}] do {
                        player removeItem _class;
                  };
            } forEach _needed;
            if(_type != "backpack") then {
                  Crafting_var_holder addItemCargo [_class, _a * _amount];
            } else {
                  Crafting_var_holder addBackpackCargo [_class, _a * _amount];
            };
      };
      [["You have crafted %1x %2", _amount, _display], true] call Client_fnc_domsg;
      Crafting_var_crafting = false;
};
private _onFailure = {
      (_this select 0) params["_item", "_amount"];
      Crafting_var_crafting = false;
};

[_amount * _time, [_item, _amount],_onFinish,_onFailure, format["Crafting %1x %2", _amount, _display]] call Client_fnc_progressBar;
