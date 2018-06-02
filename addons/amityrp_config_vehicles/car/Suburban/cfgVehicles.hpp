class red_suburban_15_p_sheriff;
class amityrp_v_suburban_base : red_suburban_15_p_sheriff
{
	displayName = "Chevrolet Suburban PD029";
	hiddenSelectionsTextures[] = {"\amityrp_data_vehicles\textures\cars\Suburban\chevrolet_suburban_029.paa","","","","","","","","","","","","","","","","","","","","","","",""};
	fuelCapacity = 15;
	peakTorque = 450;
	maxSpeed = 210;
};

class Amity_EMS_suburban;
class amityrp_v_suburban_ems_base : Amity_EMS_suburban {
	fuelCapacity = 15;
	peakTorque = 350;
	maxSpeed = 200;
};

class amityrp_v_suburban_RRU001 : amityrp_v_suburban_ems_base
{
	displayName = "Chevrolet Suburban EMS RRU-001";
	hiddenSelectionsTextures[] = {"\amityrp_data_vehicles\textures\cars\Suburban\chevrolet_suburban_rru.paa","","","","","","","","","","","","","","","","","","","","","","",""};
};

class amityrp_v_suburban_ems : amityrp_v_suburban_ems_base
{
	displayName = "Chevrolet Suburban EMS";
};
