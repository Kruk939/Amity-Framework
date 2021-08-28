/*
Refine Logs trees by dickbags
*/
if(surfaceType position player != "#amity_beach_Surface") exitwith {};
private _sound = floor(random 5) + 1;
playSound3D[format["CG_Jobs\sounds\mining\mine%1.ogg",_sound], player, false, getPosasl player, 3, 1, 15];

private _array = (getArray(missionConfigFile >> "Resources" >> "Ores" >> "Sand"));
_array params["_class", "_ch"];
private _chance = round(random 100);
if(_chance <= _ch) exitWith {
	player addItem _class;
	["You got some sand!", true] spawn Client_fnc_domsg;
};
