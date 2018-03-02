params[["_player", player]];
private _items = [(uniformItems _player), (vestItems _player), (backpackItems _player), (assignedItems _player)];
private _clothes = [(uniform _player), (vest _player), (backpack _player), (headgear _player), (goggles _player)];
private _weapons = [];
if(primaryWeapon _player != "") then {
      _weapons pushBack [primaryWeapon _player, primaryWeaponMagazine _player, primaryWeaponItems _player, _player ammo (primaryWeapon _player)];
} else {
      _weapons pushBack [];
};
if(secondaryWeapon _player != "") then {
      _weapons pushBack [secondaryWeapon _player, secondaryWeaponMagazine _player, secondaryWeaponItems _player, _player ammo (secondaryWeapon _player)];
} else {
      _weapons pushBack [];
};
if(handgunWeapon _player != "") then {
      _weapons pushBack [handgunWeapon _player, handgunMagazine _player, handgunItems _player, _player ammo (handgunWeapon _player)];
} else {
      _weapons pushBack [];
};
[_items, _clothes, _weapons];
