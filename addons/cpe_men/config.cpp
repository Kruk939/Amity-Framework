class CfgPatches
{
	class cpe_men
	{
		name = "CPE MEN";
		author = "CPE Team";
		url = "https://amityrp.pl/";
		units[]={};
		weapons[]={};
		requiredAddons[]={"A3_Weapons_F","A3_Characters_F"};
		requiredVersion=0.1;
	};
};
class UniformSlotInfo;
class CfgGlasses
{
	class None;
	class amityrp_f_gasmask_fm53: None
	{
		displayName="FM 53 GasMask";
		model="\cpe_men\MK50.p3d";
		author="CPE Team";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		ACE_Overlay="\cpe_men\data\MK50_HUD.paa";
		ACE_OverlayCracked="\cpe_men\data\MK50_HUD_Cracked.paa";
		ACE_Resistance=2;
		ACE_Protection=1;
		identityTypes[]=
		{
			"NoGlasses",
			0,
			"G_NATO_default",
			0,
			"G_NATO_casual",
			0,
			"G_NATO_pilot",
			0,
			"G_NATO_recon",
			0,
			"G_NATO_SF",
			0,
			"G_NATO_sniper",
			0,
			"G_NATO_diver",
			0,
			"G_IRAN_default",
			0,
			"G_IRAN_diver",
			0,
			"G_GUERIL_default",
			0,
			"G_HAF_default",
			0,
			"G_CIVIL_female",
			0,
			"G_CIVIL_male",
			0
		};
	};
};
class cfgWeapons
{
	class ItemCore;
	class Uniform_Base;
	class UniformItem;
	class HeadGearItem;
	class H_HelmetB;
	class amityrp_h_pd_helmet_fast1: H_HelmetB
	{
		scope=2;
		author="CPE Team";
		weaponPoolAvailable=1;
		displayName="AIPD FAST Helmet 01";
		descriptionShort="$STR_A3_SP_AL_II";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		model="\cpe_men\FAST.p3d";
		hiddenSelections[]={};
		hiddenSelectionsTextures[]={};
		class ItemInfo: HeadGearItem
		{
			mass=30;
			uniformModel="\cpe_men\FAST.p3d";
			modelSides[]={3,1};
			armor="3*0.5";
			passThrough=0.80000001;
			hiddenSelections[]={};
			class HitpointsProtectionInfo
			{
				class Head
				{
					hitpointName="HitHead";
					armor=6;
					passThrough=0.5;
				};
			};
		};
	};
	class amityrp_h_pd_helmet_fast2: H_HelmetB
	{
		scope=2;
		author="CPE Team";
		weaponPoolAvailable=1;
		displayName="AIPD FAST Helmet 02";
		descriptionShort="$STR_A3_SP_AL_II";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		model="\cpe_men\FAST2.p3d";
		hiddenSelections[]={};
		hiddenSelectionsTextures[]={};
		class ItemInfo: HeadGearItem
		{
			mass=30;
			uniformModel="\cpe_men\FAST2.p3d";
			modelSides[]={3,1};
			armor="3*0.5";
			passThrough=0.80000001;
			hiddenSelections[]={};
			class HitpointsProtectionInfo
			{
				class Head
				{
					hitpointName="HitHead";
					armor=6;
					passThrough=0.5;
				};
			};
		};
	};
	class amityrp_u_pd_swat1: Uniform_Base
	{
		scope=2;
		author="CPE Team";
		displayName="AIPD SWAT Uniform 01";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		model="\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_swat1";
			containerClass="Supply40";
			mass=20;
		};
	};
	class amityrp_u_pd_swat2: Uniform_Base
	{
		scope=2;
		author="CPE Team";
		displayName="AIPD SWAT Uniform 02";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		model="\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_swat2";
			containerClass="Supply40";
			mass=20;
		};
	};
	class amityrp_u_pd_swat3: Uniform_Base
	{
		scope=2;
		author="CPE Team";
		displayName="AIPD SWAT Uniform 03";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		model="\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_swat3";
			containerClass="Supply40";
			mass=20;
		};
	};
	class amityrp_u_pd_swat4: Uniform_Base
	{
		scope=2;
		author="CPE Team";
		displayName="AIPD SWAT Uniform 04";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		model="\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_swat4";
			containerClass="Supply40";
			mass=20;
		};
	};
	class amityrp_u_pd_swat6: Uniform_Base
	{
		scope=2;
		author="CPE Team";
		displayName="AIPD SWAT Uniform 04";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		model="\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_swat6";
			containerClass="Supply40";
			mass=20;
		};
	};
};
class CfgVehicles
{
	class B_Soldier_base_F;
	class amityrp_u_pd_swat1: B_Soldier_base_F
	{
		scope=1;
		displayName="AIPD SWAT Uniform 01";
		model="\cpe_men\suits.p3d";
		uniformClass="amityrp_u_pd_swat1";
		sensitivity=2.5;
	};
	class amityrp_u_pd_swat2: B_Soldier_base_F
	{
		scope=1;
		displayName="AIPD SWAT Uniform 02";
		model="\cpe_men\suits2.p3d";
		uniformClass="amityrp_u_pd_swat2";
		sensitivity=2.5;
	};
	class amityrp_u_pd_swat3: B_Soldier_base_F
	{
		scope=1;
		displayName="AIPD SWAT Uniform 03";
		model="\cpe_men\suits3.p3d";
		uniformClass="amityrp_u_pd_swat3";
		sensitivity=2.5;
	};
	class amityrp_u_pd_swat4: B_Soldier_base_F
	{
		scope=1;
		displayName="AIPD SWAT Uniform 04";
		model="\cpe_men\suits4.p3d";
		uniformClass="amityrp_u_pd_swat4";
		sensitivity=2.5;
	};
	class amityrp_u_pd_swat6: amityrp_u_pd_swat2
	{
		scope=1;
		displayName="AIPD SWAT Uniform 04";
		hiddenSelectionsTextures[] = {"#(argb,8,8,3)color(1,1,1,1.0,CO)"};
		uniformClass="amityrp_u_pd_swat6";
		sensitivity=2.5;
	};
};
