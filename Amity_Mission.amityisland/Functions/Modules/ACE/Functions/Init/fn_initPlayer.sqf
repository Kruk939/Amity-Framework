player onMapSingleClick {if(_alt) then { player setPos _pos;}; };
player allowDamage false;
player addAction["Arsenal", {["Open",true] spawn BIS_fnc_arsenal}];
