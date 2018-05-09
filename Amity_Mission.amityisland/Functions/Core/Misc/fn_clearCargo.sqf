params[["_holder", objNull]];
if(isNull _holder) exitWith { false; };

clearWeaponCargoGlobal _holder;
clearMagazineCargoGlobal _holder;
clearItemCargoGlobal _holder;
clearBackpackCargoGlobal _holder;
true;
