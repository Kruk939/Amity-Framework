params[["_holder", objNull]];
if(isNull _holder) exitWith { [[], [], [], []] };
private _weapons = getWeaponCargo _holder;
private _magazines = getMagazineCargo _holder;
private _items = getItemCargo _holder;
private _backpacks = getBackpackCargo _holder;
[_weapons, _magazines, _items, _backpacks];
