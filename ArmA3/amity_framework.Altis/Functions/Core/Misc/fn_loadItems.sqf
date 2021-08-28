params[["_inventory", []], ["_player", player]];
_inventory params [["_items", []], ["_clothes", []], ["_weapons", []]];
[] call Client_fnc_removeItems;

_weapons params[["_primary", []], ["_secondary", []], ["_handgun", []]];
if((count _primary) > 0) then {
      _player addWeapon (_primary select 0);
      _player addPrimaryWeaponItem ((_primary select 1) select 0);
      { _player addPrimaryWeaponItem _x; } forEach (_primary select 2);
      _player setAmmo [primaryWeapon player, (_primary select 3)];
};
if((count _secondary) > 0) then {
      _player addWeapon (_secondary select 0);
      _player addSecondaryWeaponItem ((_secondary select 1) select 0);
      { _player addSecondaryWeaponItem _x; } forEach (_secondary select 2);
      _player setAmmo [secondaryWeapon _player, (_secondary select 3)];
};
if((count _handgun) > 0) then {
      _player addWeapon (_handgun select 0);
      _player addHandgunItem ((_handgun select 1) select 0);
      { _player addHandgunItem _x; } forEach (_handgun select 2);
      _player setAmmo [secondaryWeapon _player, (_handgun select 3)];
};

if((count _clothes) > 0) then {
      _player addUniform (_clothes select 0);
      _player addVest (_clothes select 1);
      _player addBackpack (_clothes select 2);
      _player addHeadgear (_clothes select 3);
      _player addGoggles (_clothes select 4);
};
if((count _items) > 0) then {
      { _player addItemToUniform _x; } forEach (_items select 0);
      { _player addItemToVest _x; } forEach (_items select 1);
      { _player addItemToBackpack _x; } forEach (_items select 2);
      { _player addItem _x; _player assignItem _x; } forEach (_items select 3);      
};
