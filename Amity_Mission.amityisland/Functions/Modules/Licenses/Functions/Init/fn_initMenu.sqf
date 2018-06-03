private _array = [
      [
            ["LICENSES", localize "STR_LICENSES", "", { true },{(player getVariable["faction_id", -1]) > 0 && (count licenses_var_faction) != 0}],
            ["class",["Civilian", 0, ["ACE_Torso"],true]]
      ],
      [
            ["LICENSES_GIVE", localize "STR_LICENSES_GIVE", "", { [_target] call ClientModules_Licenses_fnc_give_open; },{(player getVariable["faction_id", -1]) > 0 && (count (["give"] call ClientModules_Licenses_fnc_getAvialableLicenses)) != 0}],
            ["class",["Civilian", 0, ["ACE_Torso", "LICENSES"],true]]
      ],
      [
            ["LICENSES_PREVIEW", localize "STR_LICENSES_PREVIEW", "", { [_target] call ClientModules_Licenses_fnc_preview_open; },{(player getVariable["faction_id", -1]) > 0 && (count ((["view"] call ClientModules_Licenses_fnc_getAvialableLicenses) + (["revoke"] call ClientModules_Licenses_fnc_getAvialableLicenses) + (["give"] call ClientModules_Licenses_fnc_getAvialableLicenses))) != 0}],
            ["class",["Civilian", 0, ["ACE_Torso", "LICENSES"],true]]
      ],
      [
            ["LICENSES_REVOKE", localize "STR_LICENSES_REVOKE", "", { [_target] call ClientModules_Licenses_fnc_remove_open; },{(player getVariable["faction_id", -1]) > 0 && (count (["revoke"] call ClientModules_Licenses_fnc_getAvialableLicenses)) != 0}],
            ["class",["Civilian", 0, ["ACE_Torso", "LICENSES"],true]]
      ],
      [
            ["LICENSE_WALLET",localize "STR_LICENSES_WALLET", "", {[] call ClientModules_Licenses_fnc_wallet_open;},{true}],
            ["object",[player, 1, ["ACE_SelfActions"]]]
      ]
];
_array call Client_fnc_addAction;
