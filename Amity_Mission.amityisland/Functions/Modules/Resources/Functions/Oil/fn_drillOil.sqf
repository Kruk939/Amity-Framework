private _rock = cursorobject;
if((getposATL player) distance (getposATL _rock) > 25) exitwith {};
if (str _rock find ": stone_small_w" > -1 && player distance [4643.31,3552.4,0.00143433] < 300) exitwith {
	if(_rock IN Resources_var_used_oil) exitwith { ["No more resources here!", true] spawn Client_fnc_domsg; };
	private _sound = floor(random 5) + 1;
      playSound3D[format["CG_Jobs\sounds\mining\mine%1.ogg",_sound], player, false, getPosasl player, 3, 1, 15];

      private _chance = (random 100);
      private _array = (getArray(missionConfigFile >> "Resources" >> "Ores" >> "Oil"));
	_array params["_class", "_ch"];
      if(_chance <= _class) then {
		player addItem _ch;
		Resources_var_used_oil pushback _rock;
      	["You found an oil deposit!", true] spawn Client_fnc_domsg;
      };
};
