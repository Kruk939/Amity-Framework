params [["_vehicle", objNull, [objNull]]];
if(isNull _vehicle) exitWith {};

_vehicle setHitPointDamage["HitLFWheel",1];
_vehicle setHitPointDamage["HitLF2Wheel",1];
_vehicle setHitPointDamage["HitRFWheel",1];
