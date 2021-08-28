class red_suburban_15_p_sheriff;
class amityrp_v_suburban_PD029 : red_suburban_15_p_sheriff
{
	displayName = "Chevrolet Suburban PD029";
	hiddenSelectionsTextures[] = {"\amityrp_data_vehicles\textures\cars\Suburban\chevrolet_suburban_029.paa","","","","","","","","","","","","","","","","","","","","","","",""};
	fuelCapacity = 15;
	peakTorque = 450;
	maxSpeed = 210;
};

class red_suburban_15_p_u_sheriff;
class amityrp_v_suburban_PD030 : red_suburban_15_p_u_sheriff
{
	displayName = "Chevrolet Suburban";
	hiddenSelectionsTextures[] = {"#(argb,8,8,3)color(0,0.1,0,1,CO)"};
	fuelCapacity = 15;
	peakTorque = 450;
	maxSpeed = 210;
};

class Amity_EMS_suburban;
class amityrp_v_suburban_ems_base : Amity_EMS_suburban
{
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