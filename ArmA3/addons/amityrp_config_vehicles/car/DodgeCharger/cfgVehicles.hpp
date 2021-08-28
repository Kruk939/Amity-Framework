class red_charger_15_p_AmityP1;
class amityrp_v_DodgeCharger15_base : red_charger_15_p_AmityP1
{
	terrainCoef = 1.9;
	turnCoef = 2.5;
	precision = 15;
	brakeDistance = 3;
	acceleration = 15;
	fireResistance = 3;
	thrustDelay = 0.2;
	brakeIdleSpeed = 1.78;
	maxSpeed = 260;
	fuelCapacity = 15;
	wheelCircumference = 2.277;
	antiRollbarForceCoef = 0.5;
	antiRollbarForceLimit = 0.5;
	antiRollbarSpeedMin = 20;
	antiRollbarSpeedMax = 80;
	idleRpm = 750;
	redRpm = 7500;
	class complexGearbox
	{
			GearboxRatios[] = {"R1",-3.231,"N",0,"D1",2.462,"D2",1.50,"D3",1.0,"D4",0.80,"D5",0.65};
			TransmissionRatios[] = {"High",4.111};
			gearBoxMode = "auto";
			moveOffGear = 1;
			driveString = "D";
			neutralString = "N";
			reverseString = "R";
	};
	changeGearType = "rpmratio";
	changeGearOmegaRatios[] = {             
	1,0.16,	// R1
    0.16,0,	// N
    0.9,0.16,	// D1
    0.80,0.40,	// D2
    0.75,0.40,	// D3
    0.70,0.45,	// D4
    0.65,0.40	// D5
	};
	simulation = "carx";
	dampersBumpCoef = 3;
	differentialType = "all_open";
	frontRearSplit = 0.5;
	frontBias = 1.5;
	rearBias = 1.5;
	centreBias = 1.3;
	clutchStrength = 35;
	enginePower = 520;
	maxOmega = 700;
	peakTorque = 1000;
	slowSpeedForwardCoef = 0.2;
	normalSpeedForwardCoef = 0.6;
	dampingRateFullThrottle = 0.08;
	dampingRateZeroThrottleClutchEngaged = 0.35;
	dampingRateZeroThrottleClutchDisengaged = 0.35;
	torqueCurve[] = {{0,0},{0.178,0.5},{0.25,0.6},{0.461,0.8},{0.92,1},{1,0.4}};
	changeGearMinEffectivity[] = {0.95,0.15,0.95,0.95,0.95,0.90,0.95};
	switchTime = 0.25;
	latency = 2;
};
class amityrp_v_DodgeCharger15_PD013 : amityrp_v_DodgeCharger15_base
{
	displayName = "Dodge Charger 2015 PD013";
	hiddenSelectionsTextures[] = {"\amityrp_data_vehicles\textures\cars\DodgeCharger\dodge_charger_15_013.paa","","","","","","","","","","","","","","","","","","","","","","",""};
};

class amityrp_v_DodgeCharger15_PD014 : amityrp_v_DodgeCharger15_base
{
	displayName = "Dodge Charger 2015 PD014";
	hiddenSelectionsTextures[] = {"\amityrp_data_vehicles\textures\cars\DodgeCharger\dodge_charger_15_014.paa","","","","","","","","","","","","","","","","","","","","","","",""};
};

class amityrp_v_DodgeCharger15_PD015 : amityrp_v_DodgeCharger15_base
{
	displayName = "Dodge Charger 2015 PD015";
	hiddenSelectionsTextures[] = {"\amityrp_data_vehicles\textures\cars\DodgeCharger\dodge_charger_15_015.paa","","","","","","","","","","","","","","","","","","","","","","",""};
};

class red_charger_15_p_u_sheriff;
class amityrp_v_DodgeCharger15_uc_base : red_charger_15_p_u_sheriff
{
	terrainCoef = 1.9;
	turnCoef = 2.5;
	precision = 15;
	brakeDistance = 3;
	acceleration = 15;
	fireResistance = 3;
	thrustDelay = 0.2;
	brakeIdleSpeed = 1.78;
	maxSpeed = 260;
	fuelCapacity = 15;
	wheelCircumference = 2.277;
	antiRollbarForceCoef = 0.5;
	antiRollbarForceLimit = 0.5;
	antiRollbarSpeedMin = 20;
	antiRollbarSpeedMax = 80;
	idleRpm = 750;
	redRpm = 7500;
	class complexGearbox
	{
			GearboxRatios[] = {"R1",-3.231,"N",0,"D1",2.462,"D2",1.50,"D3",1.0,"D4",0.80,"D5",0.65};
			TransmissionRatios[] = {"High",4.111};
			gearBoxMode = "auto";
			moveOffGear = 1;
			driveString = "D";
			neutralString = "N";
			reverseString = "R";
	};
	changeGearType = "rpmratio";
	changeGearOmegaRatios[] = {             
	1,0.16,	// R1
    0.16,0,	// N
    0.9,0.16,	// D1
    0.80,0.40,	// D2
    0.75,0.40,	// D3
    0.70,0.45,	// D4
    0.65,0.40	// D5
	};
	simulation = "carx";
	dampersBumpCoef = 3;
	differentialType = "all_open";
	frontRearSplit = 0.5;
	frontBias = 1.5;
	rearBias = 1.5;
	centreBias = 1.3;
	clutchStrength = 35;
	enginePower = 520;
	maxOmega = 700;
	peakTorque = 1000;
	slowSpeedForwardCoef = 0.2;
	normalSpeedForwardCoef = 0.6;
	dampingRateFullThrottle = 0.08;
	dampingRateZeroThrottleClutchEngaged = 0.35;
	dampingRateZeroThrottleClutchDisengaged = 0.35;
	torqueCurve[] = {{0,0},{0.178,0.5},{0.25,0.6},{0.461,0.8},{0.92,1},{1,0.4}};
	changeGearMinEffectivity[] = {0.95,0.15,0.95,0.95,0.95,0.90,0.95};
	switchTime = 0.25;
	latency = 2;
};

class amityrp_v_DodgeCharger15_PD017 : amityrp_v_DodgeCharger15_uc_base
{
	displayName = "Dodge Charger 2015";
	hiddenSelectionsTextures[] = {"#(argb,8,8,3)color(0,0,0,1,CO)"};
};

class amityrp_v_DodgeCharger15_PD018 : amityrp_v_DodgeCharger15_uc_base
{
	displayName = "Dodge Charger 2015";
	hiddenSelectionsTextures[] = {"#(argb,8,8,3)color(0.1,0,0,1,CO)"};
	maxSpeed = 300;
};