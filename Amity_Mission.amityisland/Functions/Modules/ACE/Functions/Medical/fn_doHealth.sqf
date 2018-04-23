if(medical_deadPlayer) exitwith {};
params [["_adjust", "", [""]], ["_amount", 0, [0]], ["_source", objNull, [objNull]],["_headshot", 0, [0]]];
if(_adjust == "Add") then {
	medical_myHealth = medical_myHealth - _amount;
};
if(_adjust == "Remove") then {
	medical_myHealth = medical_myHealth + _amount;
};
if(_adjust == "Set") then {
	medical_myHealth = _amount;
};
if(medical_myHealth < 0) then { medical_myHealth = 0; };
