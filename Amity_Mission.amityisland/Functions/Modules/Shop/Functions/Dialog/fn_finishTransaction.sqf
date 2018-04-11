params[["_add", []], ["_remove", []], ["_message", ""]];
[_message, true] call Client_fnc_domsg;
if(count _add == 0 && count _remove == 0) exitWith {};
closeDialog 0;
[] call ClientModules_Shop_fnc_terminateCamera;

if(count _add != 0) then {
      if(isNull Shop_var_holder) then {
            Shop_var_holder = "plp_ct_woodboxlightsmall" createVehicleLocal (getpos player);
            player disableCollisionWith Shop_var_holder;
      } else {
            if(player distance Shop_var_holder > 100) then {
                  clearWeaponCargo Shop_var_holder;
                  clearMagazineCargo Shop_var_holder;
                  clearItemCargo Shop_var_holder;
                  clearBackpackCargo Shop_var_holder;
            };
      };
      player allowDamage false;
      private _pos = getPosATL player;
      private _dir = getDir player;
      private _distance = 3;
      _pos set[0, (_pos select 0) + (sin _dir) * _distance];
      _pos set[1, (_pos select 1) + (cos _dir) * _distance];
      Shop_var_holder setDir _dir;
      Shop_var_holder setPosATL _pos;
      player allowDamage true;
      {
            _x params["_class", "_type", "_count"];
            if(_type != "backpack") then {
                  Shop_var_holder addItemCargo [_class, _count];
            } else {
                  Shop_var_holder addBackpackCargo [_class, _count];
            };
      } forEach _add;
};

if(count _remove != 0) then {
      {
            _x params["_class", "_type", "_count"];
            if(_type != "backpack") then {
                  private _i = 0;
                  for [{}, { _i < _count }, { _i = _i + 1; }] do {
                      player removeItem _class;
                  };
            } else {
                  private _backpack = backpackContainer player;
                  [_backpack, _class, _count] call CBA_fnc_removeBackpackCargo;
            };
      } forEach _remove;
};
