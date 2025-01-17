class Medical {
	class Config {
		syncTime = 30;
		requestMedicDelay = 30;
		minimalDamageToRevive = 0.1;
		removeCashOnDeath = 1;
		facilities[] = {
			"land_POP_Hospital",
			"A3L_HospitalBed"
		};
		vehicles[] = {
			"amity_ambulance"
		};
		class Price {
			fullHeal = 300;
		};
	};
	class Defibrylator {
		item = "CG_ATF_Revival_Kit_i";
		animation = "AinvPknlMstpSnonWnonDr_medic5";
		sound = "openrp_client\Sounds\Medic\Defib.ogg";
		minTime = 10;
		maxTime = 20;
		defaultChance = 99;
		cardiacArrestChance = 50; //on each try add this to next try chance
	};
	class CPR {
		item = "CG_ATF_First_Aid_Kit_i";
		animation = "AinvPknlMstpSnonWnonDr_medic5";
		minTime = 120;
		maxTime = 180;
		startChance = 10;
		addChance = 10; //on each try add this to next try chance
		addTime = 180; //adds random time to player dead count
	};
	class Medical {
	};
};
class ACE_Settings {
	class ace_medical_blood_enabledFor {
		value = 2;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_common_forceAllSettings {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_common_checkPBOsAction {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_common_checkPBOsCheckAll {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_common_checkPBOsWhitelist {
		value = "[]";
		typeName = "STRING";
		force = 1;
	};
	class ace_common_settingFeedbackIcons {
		value = 1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_common_settingProgressBarLocation {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_common_displayTextColor {
		value[] = {0, 0, 0, 0.1};
		typeName = "COLOR";
		force = 1;
	};
	class ace_common_displayTextFontColor {
		value[] = {1, 1, 1, 1};
		typeName = "COLOR";
		force = 1;
	};
	class ace_cookoff_enable {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_cookoff_enableAmmobox {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_cookoff_enableAmmoCookoff {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_cookoff_ammoCookoffDuration {
		value = 1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_finger_enabled {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_finger_maxRange {
		value = 4;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_finger_indicatorForSelf {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_finger_indicatorColor {
		value[] = {0.83, 0.68, 0.21, 0.75};
		typeName = "COLOR";
		force = 1;
	};
	class ace_frag_enabled {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_frag_spallEnabled {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_frag_reflectionsEnabled {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_frag_maxTrack {
		value = 10;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_frag_maxTrackPerFrame {
		value = 10;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_gforces_enabledFor {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_goggles_effects {
		value = 2;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_goggles_showInThirdPerson {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_hitreactions_minDamageToTrigger {
		value = 0.1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_interact_menu_alwaysUseCursorSelfInteraction {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_interact_menu_cursorKeepCentered {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_interact_menu_alwaysUseCursorInteraction {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_interact_menu_useListMenu {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_interact_menu_colorTextMax {
		value[] = {1, 1, 1, 1};
		typeName = "COLOR";
		force = 1;
	};
	class ace_interact_menu_colorTextMin {
		value[] = {1, 1, 1, 0.25};
		typeName = "COLOR";
		force = 1;
	};
	class ace_interact_menu_colorShadowMax {
		value[] = {0, 0, 0, 1};
		typeName = "COLOR";
		force = 1;
	};
	class ace_interact_menu_colorShadowMin {
		value[] = {0, 0, 0, 0.25};
		typeName = "COLOR";
		force = 1;
	};
	class ace_interact_menu_textSize {
		value = 2;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_interact_menu_shadowSetting {
		value = 2;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_interact_menu_actionOnKeyRelease {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_interact_menu_menuBackground {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_interact_menu_addBuildingActions {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_interact_menu_menuAnimationSpeed {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_interaction_enableTeamManagement {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_interaction_enableMagazinePassing {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_inventory_inventoryDisplaySize {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_laser_dispersionCount {
		value = 2;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_laserpointer_enabled {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_magazinerepack_timePerAmmo {
		value = 1.5;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_magazinerepack_timePerMagazine {
		value = 2;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_magazinerepack_timePerBeltLink {
		value = 8;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_map_BFT_Interval {
		value = 1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_map_BFT_Enabled {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_map_BFT_HideAiGroups {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_map_BFT_ShowPlayerNames {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_map_mapIllumination {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_map_mapGlow {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_map_mapShake {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_map_mapLimitZoom {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_map_mapShowCursorCoordinates {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_map_defaultChannel {
		value = -1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_map_gestures_enabled {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_map_gestures_maxRange {
		value = 7;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_map_gestures_interval {
		value = 0.03;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_map_gestures_nameTextColor {
		value[] = {0.2, 0.2, 0.2, 0.3};
		typeName = "COLOR";
		force = 1;
	};
	class ace_map_gestures_defaultLeadColor {
		value[] = {1, 0.88, 0, 0.95};
		typeName = "COLOR";
		force = 1;
	};
	class ace_map_gestures_defaultColor {
		value[] = {1, 0.88, 0, 0.7};
		typeName = "COLOR";
		force = 1;
	};
	class ace_maptools_rotateModifierKey {
		value = 1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_maptools_drawStaightLines {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_medical_level {
		value = 2;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_medicSetting {
		value = 2;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_increaseTrainingInLocations {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_medical_enableFor {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_enableOverdosing {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_medical_setting_allowSharedEquipment {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_medical_bleedingCoefficient {
		value = 1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_painCoefficient {
		value = 1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_enableAirway {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_medical_enableFractures {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_medical_enableAdvancedWounds {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_medical_enableVehicleCrashes {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_medical_enableScreams {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_medical_playerDamageThreshold {
		value = 1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_AIDamageThreshold {
		value = 1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_enableUnconsciousnessAI {
		value = 1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_remoteControlledAI {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_medical_preventInstaDeath {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_medical_enableRevive {
		value = 1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_maxReviveTime {
		value = 6000;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_amountOfReviveLives {
		value = 1000;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_allowDeadBodyMovement {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_medical_allowLitterCreation {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_medical_litterSimulationDetail {
		value = 3;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_litterCleanUpDelay {
		value = 60;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_medicSetting_basicEpi {
		value = 1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_medicSetting_PAK {
		value = 1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_medicSetting_SurgicalKit {
		value = 2;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_consumeItem_PAK {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_consumeItem_SurgicalKit {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_useLocation_basicEpi {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_useLocation_PAK {
		value = 2;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_useLocation_SurgicalKit {
		value = 3;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_useCondition_PAK {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_useCondition_SurgicalKit {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_keepLocalSettingsSynced {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_medical_healHitPointAfterAdvBandage {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_medical_painIsOnlySuppressed {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_medical_painEffectType {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_allowUnconsciousAnimationOnTreatment {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_medical_moveUnitsFromGroupOnUnconscious {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_medical_menuTypeStyle {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_delayUnconCaptive {
		value = 3;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_ai_enabledFor {
		value = 2;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_menu_allow {
		value = 1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_menu_useMenu {
		value = 1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_medical_menu_openAfterTreatment {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_medical_menu_maxRange {
		value = 3;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_microdagr_mapDataAvailable {
		value = 2;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_missileguidance_enabled {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_mk6mortar_airResistanceEnabled {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_mk6mortar_allowComputerRangefinder {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_mk6mortar_allowCompass {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_mk6mortar_useAmmoHandling {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_movement_useImperial {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_nametags_defaultNametagColor {
		value[] = {0.77, 0.51, 0.08, 1};
		typeName = "COLOR";
		force = 1;
	};
	class ace_nametags_showPlayerNames {
		value = 4;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_nametags_showPlayerRanks {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_nametags_showVehicleCrewInfo {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_nametags_showNamesForAI {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_nametags_showCursorTagForVehicles {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_nametags_showSoundWaves {
		value = 1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_nametags_playerNamesViewDistance {
		value = 5;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_nametags_playerNamesMaxAlpha {
		value = 0.8;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_nametags_tagSize {
		value = 2;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_nightvision_disableNVGsWithSights {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_optionsmenu_optionMenuDisplaySize {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_optionsmenu_showNewsOnMainMenu {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_overheating_displayTextOnJam {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_overheating_showParticleEffects {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_overheating_showParticleEffectsForEveryone {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_overheating_overheatingDispersion {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_overheating_unJamOnreload {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_overheating_unJamFailChance {
		value = 0.1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_overheating_enabled {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_overpressure_distanceCoefficient {
		value = 1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_quickmount_enabled {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_quickmount_distance {
		value = 3;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_quickmount_speed {
		value = 18;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_quickmount_priority {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_rearm_level {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_rearm_supply {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_refuel_rate {
		value = 1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_refuel_hoseLength {
		value = 12;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_reload_displayText {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_repair_displayTextOnRepair {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_repair_engineerSetting_repair {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_repair_engineerSetting_wheel {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_repair_repairDamageThreshold {
		value = 0.6;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_repair_repairDamageThreshold_engineer {
		value = 0.4;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_repair_consumeItem_toolKit {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_repair_fullRepairLocation {
		value = 2;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_repair_engineerSetting_fullRepair {
		value = 2;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_repair_addSpareParts {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_repair_wheelRepairRequiredItems {
		value = 1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_repair_autoShutOffEngineWhenStartingRepair {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_respawn_savePreDeathGear {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_respawn_removeDeadBodiesDisconnected {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_respawn_bodyRemoveTimer {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_scopes_enabled {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_scopes_forceUseOfAdjustmentTurrets {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_scopes_correctZeroing {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_scopes_overwriteZeroRange {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_scopes_defaultZeroRange {
		value = 100;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_scopes_zeroReferenceTemperature {
		value = 15;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_scopes_zeroReferenceBarometricPressure {
		value = 1013.25;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_scopes_zeroReferenceHumidity {
		value = 0.5;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_scopes_deduceBarometricPressureFromTerrainAltitude {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_spectator_filterUnits {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_spectator_filterSides {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_spectator_restrictModes {
		value = 3;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_spectator_restrictVisions {
		value = 3;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_switchunits_enableSwitchUnits {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_switchunits_switchToWest {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_switchunits_switchToEast {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_switchunits_switchToIndependent {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_switchunits_switchToCivilian {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_switchunits_enableSafeZone {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_switchunits_safeZoneRadius {
		value = 100;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_tagging_quickTag {
		value = 1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_ui_allowSelectiveUI {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_soldierVehicleWeaponInfo {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_vehicleRadar {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_vehicleCompass {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_commandMenu {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_groupBar {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_weaponName {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_weaponNameBackground {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_firingMode {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_ammoType {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_ammoCount {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_magCount {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_throwableName {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_throwableCount {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_zeroing {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_weaponLowerInfoBackground {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_stance {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_staminaBar {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_gunnerWeaponName {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_gunnerWeaponNameBackground {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_gunnerFiringMode {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_gunnerAmmoType {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_gunnerAmmoCount {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_gunnerMagCount {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_gunnerLaunchableName {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_gunnerLaunchableCount {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_gunnerZeroing {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_gunnerWeaponLowerInfoBackground {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_vehicleName {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_vehicleNameBackground {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_vehicleFuelBar {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_vehicleSpeed {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_vehicleAltitude {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_vehicleDamage {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_ui_vehicleInfoBackground {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_vehiclelock_defaultLockpickStrength {
		value = 10;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_vehiclelock_lockVehicleInventory {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_vehiclelock_vehicleStartingLockState {
		value = -1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_viewdistance_enabled {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_viewdistance_viewDistanceOnFoot {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_viewdistance_viewDistanceLandVehicle {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_viewdistance_viewDistanceAirVehicle {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_viewdistance_limitViewDistance {
		value = 10000;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_viewdistance_objectViewDistanceCoeff {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_weaponselect_displayText {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_weather_enableServerController {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_weather_useACEWeather {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_weather_syncRain {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_weather_syncWind {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_weather_syncMisc {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_weather_serverUpdateInterval {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_winddeflection_enabled {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_winddeflection_vehicleEnabled {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_winddeflection_simulationInterval {
		value = 0.05;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_winddeflection_simulationRadius {
		value = 3000;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_zeus_zeusAscension {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_zeus_zeusBird {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_zeus_remoteWind {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_zeus_radioOrdnance {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_zeus_revealMines {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_zeus_autoAddObjects {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class acex_sitting_enable {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class acex_viewrestriction_mode {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class acex_viewrestriction_modeSelectiveFoot {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class acex_viewrestriction_modeSelectiveLand {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class acex_viewrestriction_modeSelectiveAir {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class acex_viewrestriction_modeSelectiveSea {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class acex_volume_enabled {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class acex_volume_reduction {
		value = 5;
		typeName = "SCALAR";
		force = 1;
	};
	class acex_volume_fadeDelay {
		value = 1;
		typeName = "SCALAR";
		force = 1;
	};
	class acex_volume_lowerInVehicles {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class acex_volume_showNotification {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class acex_volume_remindIfLowered {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_advanced_fatigue_enabled {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_advanced_fatigue_enableStaminaBar {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_advanced_fatigue_performanceFactor {
		value = 1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_advanced_fatigue_recoveryFactor {
		value = 1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_advanced_fatigue_loadFactor {
		value = 1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_advanced_fatigue_terrainGradientFactor {
		value = 1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_advanced_throwing_enabled {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_advanced_throwing_showThrowArc {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_advanced_throwing_showMouseControls {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_advanced_throwing_enablePickUp {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_advanced_throwing_enablePickUpAttached {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_captives_allowHandcuffOwnSide {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_captives_requireSurrender {
		value = 1;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_captives_allowSurrender {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_cargo_enable {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_cargo_paradropTimeCoefficent {
		value = 2.5;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_explosives_requireSpecialist {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_explosives_punishNonSpecialists {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_explosives_explodeOnDefuse {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_gestures_showOnInteractionMenu {
		value = 2;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_hearing_enableCombatDeafness {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_hearing_earplugsVolume {
		value = 0.5;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_hearing_unconsciousnessVolume {
		value = 0.4;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_hearing_disableEarRinging {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_hearing_enabledForZeusUnits {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_hearing_autoAddEarplugsToUnits {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class acex_headless_enabled {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class acex_headless_delay {
		value = 15;
		typeName = "SCALAR";
		force = 1;
	};
	class acex_headless_endMission {
		value = 0;
		typeName = "SCALAR";
		force = 1;
	};
	class acex_headless_log {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_advanced_ballistics_enabled {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_advanced_ballistics_simulateForSnipers {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_advanced_ballistics_simulateForGroupMembers {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_advanced_ballistics_simulateForEveryone {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_advanced_ballistics_disabledInFullAutoMode {
		value = 0;
		typeName = "BOOL";
		force = 1;
	};
	class ace_advanced_ballistics_ammoTemperatureEnabled {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_advanced_ballistics_barrelLengthInfluenceEnabled {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_advanced_ballistics_bulletTraceEnabled {
		value = 1;
		typeName = "BOOL";
		force = 1;
	};
	class ace_advanced_ballistics_simulationInterval {
		value = 0.05;
		typeName = "SCALAR";
		force = 1;
	};
	class ace_advanced_ballistics_simulationRadius {
		value = 3000;
		typeName = "SCALAR";
		force = 1;
	};
};
