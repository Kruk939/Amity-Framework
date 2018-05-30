class amity_PD_explorer;
class amityrp_v_FordExplorer_base : amity_PD_explorer
{
	terrainCoef = 1.7;
	turnCoef = 2.0;
	precision = 15;
	brakeDistance = 4;
	acceleration = 12;
	fireResistance = 4;
	thrustDelay = 0.3;
	brakeIdleSpeed = 1.98;
	maxSpeed = 240;
	fuelCapacity = 20;
	wheelCircumference = 2.277;
	antiRollbarForceCoef = 0.5;
	antiRollbarForceLimit = 0.5;
	antiRollbarSpeedMin = 20;
	antiRollbarSpeedMax = 80;
	idleRpm = 750;
	redRpm = 7000;
	class complexGearbox
	{
		GearboxRatios[] = {"R1",-3.231,"N",0,"D1",2.662,"D2",1.90,"D3",1.6,"D4",1.3,"D5",1.0,"D6",0.70};
		TransmissionRatios[] = {"High",4.1};
		gearBoxMode = "auto";
		moveOffGear = 1;
		driveString = "D";
		neutralString = "N";
		reverseString = "R";
	};
	simulation = "carx";
	dampersBumpCoef = 3;
	differentialType = "front_open";
	frontRearSplit = 0.5;
	frontBias = 1.5;
	rearBias = 1.5;
	centreBias = 1.3;
	clutchStrength = 35;
	enginePower = 300;
	maxOmega = 650;
	peakTorque = 700;
	slowSpeedForwardCoef = 0.2;
	normalSpeedForwardCoef = 0.6;
	dampingRateFullThrottle = 0.08;
	dampingRateZeroThrottleClutchEngaged = 0.35;
	dampingRateZeroThrottleClutchDisengaged = 0.35;
	torqueCurve[] = {{0,0},{0.178,0.5},{0.25,0.6},{0.5,0.8},{0.8,1},{1,0.4}};
	changeGearMinEffectivity[] = {0.95,0.15,0.95,0.95,0.95,0.95,0.95};
	switchTime = 0.35;
	latency = 2;
	scope = 2;

};

class red_explorer_16_p_state;
class amityrp_v_FordExplorer_state_base : red_explorer_16_p_state
{
	terrainCoef = 1.7;
	turnCoef = 2.0;
	precision = 15;
	brakeDistance = 4;
	acceleration = 12;
	fireResistance = 4;
	thrustDelay = 0.3;
	brakeIdleSpeed = 1.98;
	maxSpeed = 250;
	fuelCapacity = 20;
	wheelCircumference = 2.277;
	antiRollbarForceCoef = 0.5;
	antiRollbarForceLimit = 0.5;
	antiRollbarSpeedMin = 20;
	antiRollbarSpeedMax = 80;
	idleRpm = 750;
	redRpm = 7000;
	class complexGearbox
	{
		GearboxRatios[] = {"R1",-3.231,"N",0,"D1",2.662,"D2",1.90,"D3",1.6,"D4",1.3,"D5",1.0,"D6",0.70};
		TransmissionRatios[] = {"High",4.1};
		gearBoxMode = "auto";
		moveOffGear = 1;
		driveString = "D";
		neutralString = "N";
		reverseString = "R";
	};
	simulation = "carx";
	dampersBumpCoef = 3;
	differentialType = "front_open";
	frontRearSplit = 0.5;
	frontBias = 1.5;
	rearBias = 1.5;
	centreBias = 1.3;
	clutchStrength = 35;
	enginePower = 300;
	maxOmega = 650;
	peakTorque = 700;
	slowSpeedForwardCoef = 0.2;
	normalSpeedForwardCoef = 0.6;
	dampingRateFullThrottle = 0.08;
	dampingRateZeroThrottleClutchEngaged = 0.35;
	dampingRateZeroThrottleClutchDisengaged = 0.35;
	torqueCurve[] = {{0,0},{0.178,0.5},{0.25,0.6},{0.5,0.8},{0.8,1},{1,0.4}};
	changeGearMinEffectivity[] = {0.95,0.15,0.95,0.95,0.95,0.95,0.95};
	switchTime = 0.35;
	latency = 2;
	scope = 2;

};

class amityrp_v_FordExplorer_PD019 : amityrp_v_FordExplorer_base
{
	displayName = "Ford Interceptor 2017 PD019";
	hiddenSelectionsTextures[] = {"\amityrp_data_vehicles\textures\cars\FordExplorer\ford_explorer_019.paa","","","","","","","","","","","","","","","","","","","","","","",""};
};
class amityrp_v_FordExplorer_SWAT020 : amityrp_v_FordExplorer_state_base
{
	displayName = "Ford Interceptor 2017 SWAT020";
	hiddenSelectionsTextures[] = {"\amityrp_data_vehicles\textures\cars\FordExplorer\ford_explorer_020.paa","","","","","","","","","","","","","","","","","","","","","","",""};
};
class amityrp_v_FordExplorer_PD021 : amityrp_v_FordExplorer_base
{
	displayName = "Ford Interceptor 2017 PD021";
	hiddenSelectionsTextures[] = {"\amityrp_data_vehicles\textures\cars\FordExplorer\ford_explorer_021.paa","","","","","","","","","","","","","","","","","","","","","","",""};
};

class amity_EMS_explorer;
class amityrp_v_FordExplorer_ems : amity_EMS_explorer
{
	displayName = "Ford Explorer 2017 EMS";
	terrainCoef = 1.7;
	turnCoef = 2.0;
	precision = 15;
	brakeDistance = 4;
	acceleration = 12;
	fireResistance = 1;
	thrustDelay = 0.3;
	brakeIdleSpeed = 1.98;
	maxSpeed = 205;
	fuelCapacity = 20;
	wheelCircumference = 2.277;
	antiRollbarForceCoef = 0.5;
	antiRollbarForceLimit = 0.5;
	antiRollbarSpeedMin = 20;
	antiRollbarSpeedMax = 80;
	idleRpm = 750;
	redRpm = 7000;
	class complexGearbox
	{
		GearboxRatios[] = {"R1",-3.231,"N",0,"D1",2.662,"D2",1.90,"D3",1.6,"D4",1.3,"D5",1.0,"D6",0.70};
		TransmissionRatios[] = {"High",4.1};
		gearBoxMode = "auto";
		moveOffGear = 1;
		driveString = "D";
		neutralString = "N";
		reverseString = "R";
	};
	simulation = "carx";
	dampersBumpCoef = 3;
	differentialType = "front_open";
	frontRearSplit = 0.5;
	frontBias = 1.5;
	rearBias = 1.5;
	centreBias = 1.3;
	clutchStrength = 35;
	enginePower = 300;
	maxOmega = 650;
	peakTorque = 600;
	slowSpeedForwardCoef = 0.2;
	normalSpeedForwardCoef = 0.6;
	dampingRateFullThrottle = 0.08;
	dampingRateZeroThrottleClutchEngaged = 0.35;
	dampingRateZeroThrottleClutchDisengaged = 0.35;
	torqueCurve[] = {{0,0},{0.178,0.5},{0.25,0.6},{0.5,0.8},{0.8,1},{1,0.4}};
	changeGearMinEffectivity[] = {0.95,0.15,0.95,0.95,0.95,0.95,0.95};
	switchTime = 0.35;
	latency = 2;
	scope = 2;

};
