private _array = [
      [
            ["LICENSES", "Licenses", "", { true },{(player getVariable["faction_id", -1]) > 0 && (count licenses_var_faction) != 0}],
            ["class",["Civilian", 0, ["ACE_Torso"],true]]
      ],
      [
            ["LICENSES_GIVE", "Give", "", { [_target] call ClientModules_Licenses_fnc_give_open; },{(player getVariable["faction_id", -1]) > 0 && (count (["give"] call ClientModules_Licenses_fnc_getAvialableLicenses)) != 0}],
            ["class",["Civilian", 0, ["ACE_Torso", "LICENSES"],true]]
      ],
      [
            ["LICENSES_PREVIEW", "Preview", "", { [_target] call ClientModules_Licenses_fnc_preview_open; },{(player getVariable["faction_id", -1]) > 0 && (count ((["view"] call ClientModules_Licenses_fnc_getAvialableLicenses) + (["revoke"] call ClientModules_Licenses_fnc_getAvialableLicenses) + (["give"] call ClientModules_Licenses_fnc_getAvialableLicenses))) != 0}],
            ["class",["Civilian", 0, ["ACE_Torso", "LICENSES"],true]]
      ],
      [
            ["LICENSES_REVOKE", "Revoke", "", { [_target] call ClientModules_Licenses_fnc_remove_open; },{(player getVariable["faction_id", -1]) > 0 && (count (["revoke"] call ClientModules_Licenses_fnc_getAvialableLicenses)) != 0}],
            ["class",["Civilian", 0, ["ACE_Torso", "LICENSES"],true]]
      ]
];
_array call Client_fnc_addAction;
