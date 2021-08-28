/*
Refine Logs trees by dickbags
*/
private _rock = cursorobject;
if((getposATL player) distance (getposATL _rock) > 25) exitwith {};
if(((str _rock find ": w_sharprock" > -1 )|| (str _rock find ": bluntrock" > -1)) && (player distance (getMarkerPos "Mine")) < 200) exitwith {
	if(_rock IN Resources_var_used_metal) exitwith { ["Only stones left in this rock!", true] spawn Client_fnc_domsg;  };
	private _sound = floor(random 5) + 1;
	playSound3D[format["CG_Jobs\sounds\mining\mine%1.ogg",_sound], player, false, getPosasl player, 3, 1, 15];
	 private _chance = round(random 100);
	 private _metals = (getArray(missionConfigFile >> "Resources" >> "Ores" >> "Metal"));
	 private _chances = [];
	{
		 if(_forEachIndex == 0) then {
		 	_chances pushBack _x;
		 } else {
			 _chances pushBack [_x select 0, ((_x select 1) + ((_chances select (_forEachIndex - 1) select 1)))];
		 };
	} forEach _metals;
	private _last_chance = 0;
	{

		if(_last_chance <= _chance && _chance < (_x select 1)) exitWith {
			Resources_var_used_metal pushBack _rock;
			player addItem (_x select 0);
			["You found some ore!", true] spawn Client_fnc_domsg;
		};
		_last_chance = (_x select 1);
	} forEach _chances;
};
