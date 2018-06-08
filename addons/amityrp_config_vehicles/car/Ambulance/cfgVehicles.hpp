class amity_ambulance;
class amityrp_v_ambulance_base : amity_ambulance
{
	displayName = "Ford F350 Ambulance";
	fuelCapacity = 15;
	idleRpm = 750;
	redRpm = 6500;
	maxOmega = 600;
	class complexGearbox
	{
            GearboxRatios[] = {"R1",-3.231,"N",0,"D1",4.462,"D2",3.50,"D3",2.40,"D4",1.5,"D5",1};
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
    0.70,0.30,	// D4
    0.65,0.25	// D5
	};
	peakTorque = 250;
	maxSpeed = 145;
};