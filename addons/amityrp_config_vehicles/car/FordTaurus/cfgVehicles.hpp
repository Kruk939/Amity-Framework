class red_taurus_10_p_sheriff;
class amityrp_v_FordTaurus_base : red_taurus_10_p_sheriff
{
	terrainCoef = 1.7;
	turnCoef = 2.0;
	precision = 15;
	brakeDistance = 4;
	acceleration = 12;
	fireResistance = 2;
	thrustDelay = 0.3;
	brakeIdleSpeed = 1.98;
	maxSpeed = 210;
	fuelCapacity = 25;
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
	maxOmega = 680;
	peakTorque = 850;
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

class amityrp_v_FordTaurus_PD024 : amityrp_v_FordTaurus_base
{
	displayName = "Ford Taurus 2010 PD024";
	hiddenSelectionsTextures[] = {"\amityrp_data_vehicles\textures\cars\FordTaurus\ford_taurus_024.paa","","","","","","","","","","","","","","","","","","","","","","",""};
};
class amityrp_v_FordTaurus_PD025 : amityrp_v_FordTaurus_base
{
	displayName = "Ford Taurus 2010 PD025";
	hiddenSelectionsTextures[] = {"\amityrp_data_vehicles\textures\cars\FordTaurus\ford_taurus_025.paa","","","","","","","","","","","","","","","","","","","","","","",""};
};
class amityrp_v_FordTaurus_PD026 : amityrp_v_FordTaurus_base
{
	displayName = "Ford Taurus 2010 PD026";
	hiddenSelectionsTextures[] = {"\amityrp_data_vehicles\textures\cars\FordTaurus\ford_taurus_026.paa","","","","","","","","","","","","","","","","","","","","","","",""};
};
class amityrp_v_FordTaurus_DD027 : amityrp_v_FordTaurus_base
{
	displayName = "Ford Taurus 2010 DD027";
	hiddenSelectionsTextures[] = {"\amityrp_data_vehicles\textures\cars\FordTaurus\ford_taurus_027.paa","","","","","","","","","","","","","","","","","","","","","","",""};
};