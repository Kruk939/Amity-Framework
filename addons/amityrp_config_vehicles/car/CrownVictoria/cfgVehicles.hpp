class amity_PD_cvpi;
class amityrp_v_CrownVictoria06_base : amity_PD_cvpi
{
	terrainCoef = 1.7;
	turnCoef = 2.0;
	precision = 12;
	brakeDistance = 4;
	acceleration = 12;
	fireResistance = 1;
	thrustDelay = 0.3;
	brakeIdleSpeed = 1.98;
	maxSpeed = 185;
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
			GearboxRatios[] = {"R1",-3.231,"N",0,"D1",2.2,"D2",1.40,"D3",1.0,"D4",0.80};
			TransmissionRatios[] = {"High",4.0};
			gearBoxMode = "auto";
			moveOffGear = 1;
			driveString = "D";
			neutralString = "N";
			reverseString = "R";
	};
	simulation = "carx";
	dampersBumpCoef = 3;
	differentialType = "rear_open";
	frontRearSplit = 0.5;
	frontBias = 1.5;
	rearBias = 1.5;
	centreBias = 1.3;
	clutchStrength = 35;
	enginePower = 300;
	maxOmega = 600;
	peakTorque = 800;
	slowSpeedForwardCoef = 0.2;
	normalSpeedForwardCoef = 0.6;
	dampingRateFullThrottle = 0.08;
	dampingRateZeroThrottleClutchEngaged = 0.35;
	dampingRateZeroThrottleClutchDisengaged = 0.35;
	torqueCurve[] = {{0,0},{0.178,0.5},{0.25,0.6},{0.461,0.8},{0.92,1},{1,0.4}};
	changeGearMinEffectivity[] = {0.95,0.15,0.95,0.95,0.95,0.95,0.95};
	switchTime = 0.35;
	latency = 2;
	scope = 2;
};
class amityrp_v_CrownVictoria06_PD001 : amityrp_v_CrownVictoria06_base
{
	displayName = "Crown Victoria 2006 PD001";
	hiddenSelectionsTextures[] = {"\amityrp_data_vehicles\textures\cars\CrownVictoria\ford_cvpi_001.paa","","","","","","","","","","","","","","","","","","","","","","",""};
	peakTorque = 600;
};
class amityrp_v_CrownVictoria06_PD002 : amityrp_v_CrownVictoria06_base
{
	displayName = "Crown Victoria 2006 PD002";
	hiddenSelectionsTextures[] = {"\amityrp_data_vehicles\textures\cars\CrownVictoria\ford_cvpi_002.paa","","","","","","","","","","","","","","","","","","","","","","",""};
	peakTorque = 500;
};
class amityrp_v_CrownVictoria06_PD003 : amityrp_v_CrownVictoria06_base
{
	displayName = "Crown Victoria 2006 PD003";
	hiddenSelectionsTextures[] = {"\amityrp_data_vehicles\textures\cars\CrownVictoria\ford_cvpi_003.paa","","","","","","","","","","","","","","","","","","","","","","",""};
	peakTorque = 700;
};
class amityrp_v_CrownVictoria06_PD004 : amityrp_v_CrownVictoria06_base
{
	displayName = "Crown Victoria 2006 PD004";
	hiddenSelectionsTextures[] = {"\amityrp_data_vehicles\textures\cars\CrownVictoria\ford_cvpi_004.paa","","","","","","","","","","","","","","","","","","","","","","",""};
	peakTorque = 750;
};
class amityrp_v_CrownVictoria06_PD006 : amityrp_v_CrownVictoria06_base
{
	displayName = "Crown Victoria 2006 PD006";
	hiddenSelectionsTextures[] = {"\amityrp_data_vehicles\textures\cars\CrownVictoria\ford_cvpi_006.paa","","","","","","","","","","","","","","","","","","","","","","",""};
	peakTorque = 620;
};
class amityrp_v_CrownVictoria06_PD007 : amityrp_v_CrownVictoria06_base
{
	displayName = "Crown Victoria 2006 PD007";
	hiddenSelectionsTextures[] = {"\amityrp_data_vehicles\textures\cars\CrownVictoria\ford_cvpi_007.paa","","","","","","","","","","","","","","","","","","","","","","",""};
	peakTorque = 450;
};
class amityrp_v_CrownVictoria06_PD009 : amityrp_v_CrownVictoria06_base
{
	displayName = "Crown Victoria 2006 PD009";
	hiddenSelectionsTextures[] = {"\amityrp_data_vehicles\textures\cars\CrownVictoria\ford_cvpi_009.paa","","","","","","","","","","","","","","","","","","","","","","",""};
	peakTorque = 650;
};

class amityrp_v_CrownVictoria06_PD010 : amityrp_v_CrownVictoria06_base
{
	displayName = "Crown Victoria 2006 PD010";
	hiddenSelectionsTextures[] = {"\amityrp_data_vehicles\textures\cars\CrownVictoria\ford_cvpi_010.paa","","","","","","","","","","","","","","","","","","","","","","",""};
	peakTorque = 700;
};