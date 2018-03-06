params [["_vehicle", objNull], ["_array", []]];
if(isNull _vehicle || (count _array) == 0) exitWith {};
private _damage = ((getAllHitPointsDamage _vehicle) select 0);
{
      private _hit = _damage select _forEachIndex;
	_vehicle setHitPointDamage [_hit, _x];
} forEach _array;
