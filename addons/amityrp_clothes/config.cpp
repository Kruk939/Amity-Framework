class CfgPatches 
{ 
    class amityrp_clothes
    { 
		name="AmityRP Clothes";
		author="Soukyan";
		url="https://amityrp.pl/";
		units[]={};
		weapons[]={};
        requiredVersion=0.1; 
		requiredAddons[]={"A3_Weapons_F","A3_Characters_F","A3_Characters_F_Orange","A3_Characters_F_bootcamp"};
    }; 
}; 
class CfgVehicles
{
	class B_Soldier_base_F;
	class B_RangeMaster_F;
	class amityrp_u_pd_cop_hs: B_RangeMaster_F
	{
		scope=1;
		displayName="AIPD Chief of Police (H. Shepherd)";
		uniformClass="amityrp_u_pd_cop_hs";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_cop_hs.paa"};
	};
	class amityrp_u_pd_cop: B_RangeMaster_F
	{
		scope=1;
		displayName="AIPD Chief of Police";
		uniformClass="amityrp_u_pd_cop";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_cop.paa"};
	};
	class amityrp_u_pd_dcop: B_RangeMaster_F
	{
		scope=1;
		displayName="AIPD Deputy Chief of Police";
		uniformClass="amityrp_u_pd_dcop";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_dcop.paa"};
	};
	class amityrp_u_pd_maj_ds: B_RangeMaster_F
	{
		scope=1;
		displayName="AIPD Major (D. Shepherd)";
		uniformClass="amityrp_u_pd_maj_ds";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_maj_ds.paa"};
	};
	class amityrp_u_pd_maj_ie: B_RangeMaster_F
	{
		scope=1;
		displayName="AIPD Major (I. Elric)";
		uniformClass="amityrp_u_pd_maj_ie";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_maj_ie.paa"};
	};
	class amityrp_u_pd_maj: B_RangeMaster_F
	{
		scope=1;
		displayName="AIPD Major";
		uniformClass="amityrp_u_pd_maj";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_maj.paa"};
	};
	class amityrp_u_pd_maj_fto: B_RangeMaster_F
	{
		scope=1;
		displayName="AIPD Major (F.T.O)";
		uniformClass="amityrp_u_pd_maj_fto";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_maj_fto.paa"};
	};
	class amityrp_u_pd_cpt_bw: B_RangeMaster_F
	{
		scope=1;
		displayName="AIPD Captain (B. White)";
		uniformClass="amityrp_u_pd_cpt_bw";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_cpt_bw.paa"};
	};
	class amityrp_u_pd_cpt: B_RangeMaster_F
	{
		scope=1;
		displayName="AIPD Captain";
		uniformClass="amityrp_u_pd_cpt";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_cpt.paa"};
	};
	class amityrp_u_pd_cpt_fto: B_RangeMaster_F
	{
		scope=1;
		displayName="AIPD Captain (F.T.O)";
		uniformClass="amityrp_u_pd_cpt_fto";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_cpt_fto.paa"};
	};
	class amityrp_u_pd_lt: B_RangeMaster_F
	{
		scope=1;
		displayName="AIPD Lieutenant";
		uniformClass="amityrp_u_pd_lt";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_lt.paa"};
	};
	class amityrp_u_pd_lt_fto: B_RangeMaster_F
	{
		scope=1;
		displayName="AIPD Lieutenant (F.T.O)";
		uniformClass="amityrp_u_pd_lt_fto";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_lt_fto.paa"};
	};
	class amityrp_u_pd_ssgt_mt: B_RangeMaster_F
	{
		scope=1;
		displayName="AIPD Staff Sergeant (M. Turner)";
		uniformClass="amityrp_u_pd_ssgt_mt";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_ssgt_mt.paa"};
	};
	class amityrp_u_pd_ssgt_ks: B_RangeMaster_F
	{
		scope=1;
		displayName="AIPD Staff Sergeant (K. Severide)";
		uniformClass="amityrp_u_pd_sgt_ks";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_ssgt_ks.paa"};
	};
	class amityrp_u_pd_ssgt_rs: B_RangeMaster_F
	{
		scope=1;
		displayName="AIPD Staff Sergeant (R. Shepherd)";
		uniformClass="amityrp_u_pd_sgt_rs";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_ssgt_rs.paa"};
	};
	class amityrp_u_pd_ssgt: B_RangeMaster_F
	{
		scope=1;
		displayName="AIPD Staff Sergeant";
		uniformClass="amityrp_u_pd_ssgt";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_ssgt.paa"};
	};
	class amityrp_u_pd_ssgt_fto: B_RangeMaster_F
	{
		scope=1;
		displayName="AIPD Staff Sergeant (F.T.O)";
		uniformClass="amityrp_u_pd_ssgt_fto";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_ssgt_fto.paa"};
	};
	class amityrp_u_pd_sgt: B_RangeMaster_F
	{
		scope=1;
		displayName="AIPD Sergeant";
		uniformClass="amityrp_u_pd_sgt";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_sgt.paa"};
	};
	class amityrp_u_pd_sgt_fto: B_RangeMaster_F
	{
		scope=1;
		displayName="AIPD Sergeant (F.T.O)";
		uniformClass="amityrp_u_pd_sgt_fto";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_sgt_fto.paa"};
	};
	class amityrp_u_pd_po: B_RangeMaster_F
	{
		scope=1;
		displayName="AIPD Police Officer";
		uniformClass="amityrp_u_pd_po";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_po.paa"};
	};
	class amityrp_u_pd_ro: B_RangeMaster_F
	{
		scope=1;
		displayName="AIPD Recruit Officer";
		uniformClass="amityrp_u_pd_ro";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_ro.paa"};
	};
	class amityrp_u_pd_c: B_RangeMaster_F
	{
		scope=1;
		displayName="AIPD Cadet";
		uniformClass="amityrp_u_pd_c";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_c.paa"};
	};
	class amityrp_u_pd_pilot: B_Soldier_base_F
	{
		scope=1;
		displayName="AIPD Pilot";
		uniformClass="amityrp_u_pd_pilot";
		hiddenSelections[]={"camo","insignia"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_pilot.paa","\amityrp_clothes\data\textures\aipd_insignia.paa"};
	};
	class amityrp_u_pd_swat_ds: B_Soldier_base_F
	{
		scope=1;
		displayName="AIPD SWAT (D. Shepherd)";
		model="\A3\characters_F\BLUFOR\b_soldier_02.p3d";
		hiddenSelections[]={"camo","camo2"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_swat_pants.paa","\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_swat_shirt_ds.paa"};
	};
	class amityrp_u_pd_swat_mb: B_Soldier_base_F
	{
		scope=1;
		displayName="AIPD SWAT (M. Braun)";
		model="\A3\characters_F\BLUFOR\b_soldier_02.p3d";
		hiddenSelections[]={"camo","camo2"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_swat_pants.paa","\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_swat_shirt_mb.paa"};
	};
	class amityrp_u_pd_swat: B_Soldier_base_F
	{
		scope=1;
		displayName="AIPD SWAT";
		model="\A3\characters_F\BLUFOR\b_soldier_02.p3d";
		hiddenSelections[]={"camo","camo2"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_swat_pants.paa","\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_swat_shirt.paa","\amityrp_clothes\data\textures\swat_insignia.paa"};
	};
	class amityrp_u_ems_rru_sweater_pl: B_Soldier_base_F
	{
		scope=1;
		displayName="AIEMS RRU Sweater (Purple)";
		model="\A3\Characters_F_bootcamp\Guerrilla\ig_guerrilla_6_1.p3d";
		uniformClass="amityrp_u_ems_rru_sweater_pl";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aiems\amityrp_u_ems_rru_sweater_pl.paa"};
	};
	class amityrp_u_ems_rru_sweater_bl: B_Soldier_base_F
	{
		scope=1;
		displayName="AIEMS RRU Sweater (Blue)";
		model="\A3\Characters_F_bootcamp\Guerrilla\ig_guerrilla_6_1.p3d";
		uniformClass="amityrp_u_ems_rru_sweater_bl";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aiems\amityrp_u_ems_rru_sweater_bl.paa"};
	};
	class amityrp_u_ems_rru_sweater_rd: B_Soldier_base_F
	{
		scope=1;
		displayName="AIEMS RRU Sweater (Red)";
		model="\A3\Characters_F_bootcamp\Guerrilla\ig_guerrilla_6_1.p3d";
		uniformClass="amityrp_u_ems_rru_sweater_rd";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aiems\amityrp_u_ems_rru_sweater_rd.paa"};
	};
};
class CfgWeapons 
{
	class ItemCore;
	class Uniform_Base;
	class UniformItem;
	class HeadgearItem;
	class Vest_Camo_Base;
	class VestItem;
	class U_Rangemaster;
	class U_B_CombatUniform_mcam;
	class H_Cap_red;
	class H_HeadSet_base_F;
	class H_PilotHelmetHeli_B;
	class amityrp_u_pd_cop_hs: U_Rangemaster
	{
		scope=2;
		displayName="AIPD Chief of Police Uniform (H. Shepherd)";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_cop_hs.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_cop_hs";
			containerClass="supply200";
			mass=5;
		};
	};
	class amityrp_u_pd_cop: U_Rangemaster
	{
		scope=2;
		displayName="AIPD Chief of Police Uniform";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_cop.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_cop";
			containerClass="supply200";
			mass=5;
		};
	};
	class amityrp_u_pd_dcop: U_Rangemaster
	{
		scope=2;
		displayName="AIPD Deputy Chief of Police Uniform";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_dcop.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_dcop";
			containerClass="supply200";
			mass=5;
		};
	};
	class amityrp_u_pd_maj_ds: U_Rangemaster
	{
		scope=2;
		displayName="AIPD Major Uniform (D. Shepherd)";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_maj_ds.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_maj_ds";
			containerClass="supply200";
			mass=5;
		};
	};
	class amityrp_u_pd_maj_ie: U_Rangemaster
	{
		scope=2;
		displayName="AIPD Major Uniform (I. Elric)";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_maj_ie.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_maj_ie";
			containerClass="supply200";
			mass=5;
		};
	};
	class amityrp_u_pd_maj: U_Rangemaster
	{
		scope=2;
		displayName="AIPD Major Uniform";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_maj.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_maj";
			containerClass="supply200";
			mass=5;
		};
	};
	class amityrp_u_pd_maj_fto: U_Rangemaster
	{
		scope=2;
		displayName="AIPD Major Uniform (F.T.O)";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_maj_fto.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_maj_fto";
			containerClass="supply200";
			mass=5;
		};
	};
	class amityrp_u_pd_cpt_bw: U_Rangemaster
	{
		scope=2;
		displayName="AIPD Captain Uniform (B. White)";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_cpt_bw.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_cpt_bw";
			containerClass="supply200";
			mass=5;
		};
	};
	class amityrp_u_pd_cpt: U_Rangemaster
	{
		scope=2;
		displayName="AIPD Captain Uniform";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_cpt.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_cpt";
			containerClass="supply200";
			mass=5;
		};
	};
	class amityrp_u_pd_cpt_fto: U_Rangemaster
	{
		scope=2;
		displayName="AIPD Captain Uniform (F.T.O)";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_cpt_fto.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_cpt_fto";
			containerClass="supply200";
			mass=5;
		};
	};
	class amityrp_u_pd_lt: U_Rangemaster
	{
		scope=2;
		displayName="AIPD Lieutenant Uniform";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_lt.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_lt";
			containerClass="supply200";
			mass=5;
		};
	};
	class amityrp_u_pd_lt_fto: U_Rangemaster
	{
		scope=2;
		displayName="AIPD Lieutenant Uniform (F.T.O)";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_lt_fto.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_lt_fto";
			containerClass="supply200";
			mass=5;
		};
	};
	class amityrp_u_pd_ssgt_mt: U_Rangemaster
	{
		scope=2;
		displayName="AIPD Staff Sergeant Uniform (M. Turner)";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_ssgt_mt.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_ssgt_mt";
			containerClass="supply200";
			mass=5;
		};
	};
	class amityrp_u_pd_ssgt_ks: U_Rangemaster
	{
		scope=2;
		displayName="AIPD Staff Sergeant Uniform (K. Severide)";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_ssgt_ks.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_ssgt_ks";
			containerClass="supply200";
			mass=5;
		};
	};
	class amityrp_u_pd_ssgt_rs: U_Rangemaster
	{
		scope=2;
		displayName="AIPD Staff Sergeant Uniform (R. Shepherd)";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_ssgt_rs.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_ssgt_rs";
			containerClass="supply200";
			mass=5;
		};
	};
	class amityrp_u_pd_ssgt: U_Rangemaster
	{
		scope=2;
		displayName="AIPD Staff Sergeant Uniform";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_ssgt.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_ssgt";
			containerClass="supply200";
			mass=5;
		};
	};
	class amityrp_u_pd_ssgt_fto: U_Rangemaster
	{
		scope=2;
		displayName="AIPD Staff Sergeant Uniform (F.T.O)";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_ssgt_fto.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_ssgt_fto";
			containerClass="supply200";
			mass=5;
		};
	};
	class amityrp_u_pd_sgt: U_Rangemaster
	{
		scope=2;
		displayName="AIPD Sergeant Uniform";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_sgt.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_sgt";
			containerClass="supply200";
			mass=5;
		};
	};
	class amityrp_u_pd_sgt_fto: U_Rangemaster
	{
		scope=2;
		displayName="AIPD Sergeant Uniform (F.T.O)";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_sgt_fto.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_sgt_fto";
			containerClass="supply200";
			mass=5;
		};
	};
	class amityrp_u_pd_po: U_Rangemaster
	{
		scope=2;
		displayName="AIPD Patrol Officer Uniform";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_po.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_po";
			containerClass="supply200";
			mass=5;
		};
	};
	class amityrp_u_pd_ro: U_Rangemaster
	{
		scope=2;
		displayName="AIPD Recruit Officer Uniform";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_ro.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_ro";
			containerClass="supply200";
			mass=5;
		};
	};
	class amityrp_u_pd_c: U_Rangemaster
	{
		scope=2;
		displayName="AIPD Cadet Uniform";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_c.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_c";
			containerClass="supply200";
			mass=5;
		};
	};
	class amityrp_u_pd_pilot: U_B_CombatUniform_mcam
	{
		scope=2;
		displayName="AIPD Pilot Uniform";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		model="\A3\Characters_F\Common\Suitpacks\suitpack_original_F.p3d";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aipd\amityrp_u_pd_pilot.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_pilot";
			containerClass="supply200";
			mass=5;
		};
	};
	class amityrp_u_pd_swat_ds: Uniform_Base
	{
		scope=2;
		displayName="AIPD Swat Tactical Uniform (D. Shepherd)";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		model="\A3\Characters_F\Common\Suitpacks\suitpack_original_F.p3d";
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_swat_ds";
			containerClass="Supply40";
			mass=10;
		};
	};
	class amityrp_u_pd_swat_mb: Uniform_Base
	{
		scope=2;
		displayName="AIPD Swat Tactical Uniform (M. Braun)";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		model="\A3\Characters_F\Common\Suitpacks\suitpack_original_F.p3d";
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_swat_mb";
			containerClass="Supply40";
			mass=10;
		};
	};
	class amityrp_u_pd_swat: Uniform_Base
	{
		scope=2;
		displayName="AIPD Swat Tactical Uniform";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		model="\A3\Characters_F\Common\Suitpacks\suitpack_original_F.p3d";
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_pd_swat";
			containerClass="Supply40";
			mass=10;
		};
	};
	class amityrp_u_ems_rru_sweater_pl: Uniform_Base
	{
		scope=2;
		displayName="AIEMS RRU Sweater Uniform (Purple)";
		author="Bohemia Interactive & Starglay";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		model="\A3\Characters_F\Common\Suitpacks\suitpack_civilian_F.p3d";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aiems\amityrp_u_ems_rru_sweater_pl.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_ems_rru_sweater_pl";
			containerClass="Supply200";
			mass=5;
		};
	};
	class amityrp_u_ems_rru_sweater_bl: Uniform_Base
	{
		scope=2;
		displayName="AIEMS RRU Sweater Uniform (Blue)";
		author="Bohemia Interactive & Starglay";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		model="\A3\Characters_F\Common\Suitpacks\suitpack_civilian_F.p3d";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aiems\amityrp_u_ems_rru_sweater_bl.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_ems_rru_sweater_bl";
			containerClass="Supply200";
			mass=5;
		};
	};
	class amityrp_u_ems_rru_sweater_rd: Uniform_Base
	{
		scope=2;
		displayName="AIEMS RRU Sweater Uniform (Red)";
		author="Bohemia Interactive & Starglay";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		model="\A3\Characters_F\Common\Suitpacks\suitpack_civilian_F.p3d";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\uniforms\aiems\amityrp_u_ems_rru_sweater_rd.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="amityrp_u_ems_rru_sweater_rd";
			containerClass="Supply200";
			mass=5;
		};
	};
	class amityrp_h_pd_calot_bl: ItemCore {
		scope=2;
        weaponPoolAvailable=1;
		displayName="AIPD Calot (Blue)";
		author="Koil & Soukyan"
        model="\amityrp_clothes\data\models\amityrp_h_calot";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\hats\aipd\amityrp_h_pd_calot_bl.paa"};
        class ItemInfo: HeadgearItem {
            mass=10;
            uniformModel="\amityrp_clothes\data\models\amityrp_h_calot";
			hiddenSelections[]={"camo"};
            modelSides[]={3, 1};
            armor=0;
            passThrough=true;
        };
    };
	class amityrp_h_pd_calot_wh: ItemCore {
		scope=2;
        weaponPoolAvailable=1;
		displayName="AIPD Calot (White)";
		author="Koil & Soukyan"
        model="\amityrp_clothes\data\models\amityrp_h_calot";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\hats\aipd\amityrp_h_pd_calot_wh.paa"};
        class ItemInfo: HeadgearItem {
            mass=10;
            uniformModel="\amityrp_clothes\data\models\amityrp_h_calot";
			hiddenSelections[]={"camo"};
            modelSides[]={3, 1};
            armor=0;
            passThrough=true;
        };
    };
	class amityrp_h_pd_calot_bk: ItemCore {
		scope=2;
        weaponPoolAvailable=1;
		displayName="AIPD Calot (Black)";
		author="Koil & Soukyan"
        model="\amityrp_clothes\data\models\amityrp_h_calot";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\hats\aipd\amityrp_h_pd_calot_bk.paa"};
        class ItemInfo: HeadgearItem {
            mass=10;
            uniformModel="\amityrp_clothes\data\models\amityrp_h_calot";
			hiddenSelections[]={"camo"};
            modelSides[]={3, 1};
            armor=0;
            passThrough=true;
        };
    };
	class amityrp_h_pd_peaked_cap: ItemCore
	{
		scope=2;
        weaponPoolAvailable=1;
		displayName="AIPD Peaked Cap";
		author="Dennis & Soukyan"
        model="\amityrp_clothes\data\models\amityrp_h_peaked_cap_alt";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\hats\aipd\amityrp_h_pd_peaked_cap.paa"};
        class ItemInfo: HeadgearItem
		{
            mass=20;
            uniformModel="\amityrp_clothes\data\models\amityrp_h_peaked_cap_alt";
			hiddenSelections[]={"camo"};
            modelSides[]={3, 1};
            armor=0;
            passThrough=true;
        };
    };
	class amityrp_h_pd_peaked_cap_com: ItemCore
	{
		scope=2;
        weaponPoolAvailable=1;
		displayName="AIPD Peaked Cap (Commander)";
		author="Dennis & Soukyan"
        model="\amityrp_clothes\data\models\amityrp_h_peaked_cap_alt";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\hats\aipd\amityrp_h_pd_peaked_cap_com.paa"};
        class ItemInfo: HeadgearItem
		{
            mass=20;
            uniformModel="\amityrp_clothes\data\models\amityrp_h_peaked_cap_alt";
			hiddenSelections[]={"camo"};
            modelSides[]={3, 1};
            armor=0;
            passThrough=true;
        };
    };
	class amityrp_h_pd_peaked_cap_cop: ItemCore
	{
		scope=2;
        weaponPoolAvailable=1;
		displayName="AIPD Peaked Cap (Chief of Police)";
		author="Dennis & Soukyan"
        model="\amityrp_clothes\data\models\amityrp_h_peaked_cap_alt";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\hats\aipd\amityrp_h_pd_peaked_cap_cop.paa"};
        class ItemInfo: HeadgearItem
		{
            mass=20;
            uniformModel="\amityrp_clothes\data\models\amityrp_h_peaked_cap_alt";
			hiddenSelections[]={"camo"};
            modelSides[]={3, 1};
            armor=0;
            passThrough=true;
        };
    };
	class amityrp_h_pd_cap_c: H_Cap_red
	{
		scope=2;
		weaponPoolAvailable=1;
		displayName="AIPD Cap (Cadet)";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\hats\aipd\amityrp_h_pd_cap_c.paa"};
		class ItemInfo: HeadgearItem
		{
			mass=10;
			uniformModel="\a3\characters_f\Common\capb";
			modelSides[]={3,1};
			armor=0;
			passThrough=true;
			hiddenSelections[]={"camo"};
		};
	};
	class amityrp_h_pd_cap_bl: H_Cap_red
	{
		scope=2;
		weaponPoolAvailable=1;
		displayName="AIPD Cap (Blue)";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\hats\aipd\amityrp_h_pd_cap_bl.paa"};
		class ItemInfo: HeadgearItem
		{
			mass=10;
			uniformModel="\a3\characters_f\Common\capb";
			modelSides[]={3,1};
			armor=0;
			passThrough=true;
			hiddenSelections[]={"camo"};
		};
	};
	class amityrp_h_pd_cap_wh: H_Cap_red
	{
		scope=2;
		weaponPoolAvailable=1;
		displayName="AIPD Cap (White)";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\hats\aipd\amityrp_h_pd_cap_wh.paa"};
		class ItemInfo: HeadgearItem
		{
			mass=10;
			uniformModel="\a3\characters_f\Common\capb";
			modelSides[]={3,1};
			armor=0;
			passThrough=true;
			hiddenSelections[]={"camo"};
		};
	};
	class amityrp_h_pd_pilot_helmet: H_PilotHelmetHeli_B
	{
		scope=2;
		weaponPoolAvailable=1;
		displayName="AIPD Pilot Helmet";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\hats\aipd\amityrp_h_pd_pilot_helmet.paa"};
		class ItemInfo: HeadgearItem
		{
			mass=30;
			uniformModel="A3\Characters_F\Common\headgear_helmet_heli";
			modelSides[]={3,1};
			hiddenSelections[]={"camo"};
		};
	};
	class amityrp_h_pd_headset: H_HeadSet_base_F
	{
		scope=2;
		weaponPoolAvailable=1;
		displayName="AIPD Headset";
		author="Bohemia Interactive & Soukyan";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"\amityrp_clothes\data\textures\hats\aipd\amityrp_h_pd_headset.paa"};
		DLC="";
		class ItemInfo: HeadgearItem
		{
			mass=10;
			uniformModel="\A3\Characters_F_Orange\Headgear\H_HeadSet_F.p3d";
			modelSides[]={3};
			hiddenSelections[]={"camo"};
		};
	};
}; 