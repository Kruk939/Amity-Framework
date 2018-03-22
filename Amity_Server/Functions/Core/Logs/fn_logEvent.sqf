/*
Database structure:

CREATE TABLE `core_logs` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`TIMESTAMP` TIMESTAMP NOT NULL DEFAULT '',
	`profile_name` VARCHAR(50) NOT NULL,
	`profile_id` INT(11) NOT NULL,
	`action` VARCHAR(255) NOT NULL,
	`target_name` VARCHAR(50) NULL DEFAULT '',
	`targetprofile_id` INT(11) NULL DEFAULT NULL,
	PRIMARY KEY (`id`),
	INDEX `FK_core_logs_core_profiles` (`profile_id`),
	INDEX `FK_core_logs_core_profiles_2` (`targetprofile_id`),
	CONSTRAINT `FK_core_logs_core_profiles` FOREIGN KEY (`profile_id`) REFERENCES `core_profiles` (`id`),
	CONSTRAINT `FK_core_logs_core_profiles_2` FOREIGN KEY (`targetprofile_id`) REFERENCES `core_profiles` (`id`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=4
;
*/
params["_player", ["_action", ""],["_target",objNull]];
if(isNil "_player") exitWith {};
if(_action == "") exitWith {};
private _profile_id = -1;
if(typeName _player == "OBJECT") then {
      if(!isNull _player) then {
            _profile_id = _player getVariable["profile_id", -1];
      };
};
if(_profile_id <= 0) exitWith {};
private _first_name = _player getVariable "first_name";
private _last_name = _player getVariable "last_name";
private _profile_name = format ["%1 %2",_first_name, _last_name];;


private _target_profile_id = _target getVariable ["profile_id", -1];
if (_target_profile_id > 0) then {
      private _target_first_name = _target getVariable "first_name";
      private _target_last_name = _target getVariable "last_name";
      private _target_profile_name = format ["%1 %2",_target_first_name, _target_last_name];
      private _query = format["core_log_insert_target:%1:%2:%3:%4:%5", _profile_name, _profile_id, _action,_target_profile_name, _target_profile_id];
      [0, _query] call ExternalS_fnc_ExtDBquery;
} else {
      private _query = format["core_log_insert:%1:%2:%3", _profile_name, _profile_id, _action];
      [0, _query] call ExternalS_fnc_ExtDBquery;
};
