_array = [
[
      ["Resources_ProcessWood","Process Wood", "", {[] spawn ClientModules_Resources_fnc_processWood;},{player distance (getMarkerPos 'resources_process_wood') < 25}],
      ["object",[player, 1, ["ACE_SelfActions"],true]]

],
[
      ["Resources_ProcessMetal","Process Metal", "", {[] spawn ClientModules_Resources_fnc_processMetal;},{player distance (getMarkerPos 'resources_process_metal') < 25}],
      ["object",[player, 1, ["ACE_SelfActions"],true]]

],
[
      ["Resources_ProcessOil","Process Oil", "", {[] spawn ClientModules_Resources_fnc_processOil;},{player distance (getMarkerPos 'resources_process_oil') < 25}],
      ["object",[player, 1, ["ACE_SelfActions"],true]]
]

];
_array spawn Client_fnc_addAction;
