/*
Cutting down trees by dickbags
*/
private ["_tree", "_sound","_chance","_array"];
_tree = cursorobject;
if (str _tree find ": t_" > -1 && (player distance _tree) < 9) then {
	if(_tree IN Resources_var_used_trees) exitwith { ["No more logs here, go look somewhere else!", true] spawn Client_fnc_domsg; };
	_sound = floor(random 5) + 1;
	playSound3D[format["CG_Jobs\sounds\woodchop\woodchop%1.ogg",_sound], player, false, getPosasl player, 3, 1, 15];
	 _chance = random 100;
	 if (_chance <= 20) then {
		 ["You found some rubber!", true] spawn Client_fnc_domsg;
		 player addItem "openrp_rubber";
	 };
	 _array = (getArray(missionConfigFile >> "Resources" >> "Ores" >> "Wood"));
	 if(_chance <= (_array select 1)) then {
		Resources_var_used_trees pushback _tree;
		player addItem (_array select 0);
		["You've chopped down some log!", true] spawn Client_fnc_domsg;
		_tree setDamage 1;
	};
};
