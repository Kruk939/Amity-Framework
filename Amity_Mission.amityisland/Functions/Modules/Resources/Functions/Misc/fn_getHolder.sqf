player allowDamage false;
if(isNull Resources_var_holder) then {
      Resources_var_holder = "plp_ct_woodboxlightsmall" createVehicleLocal (getpos player);
      player disablecollisionwith Resources_var_holder;
} else {
      if(player distance Resources_var_holder > 100) then {
            clearWeaponCargo Resources_var_holder;
            clearMagazineCargo Resources_var_holder;
            clearItemCargo Resources_var_holder;
            clearBackpackCargo Resources_var_holder;
      };
};
private _pos = getPosATL player;
private _dir = getDir player;
private _distance = 3;
_pos set[0, (_pos select 0) + (sin _dir) * _distance];
_pos set[1, (_pos select 1) + (cos _dir) * _distance];
Resources_var_holder setDir _dir;
Resources_var_holder setPosATL _pos;
player allowDamage true;
Resources_var_holder;
