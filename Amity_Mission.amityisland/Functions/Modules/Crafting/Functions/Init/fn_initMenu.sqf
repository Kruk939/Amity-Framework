private _array = [
    [
            ["CRAFTING_SELF","Crafting", "", {[] call ClientModules_Crafting_fnc_open;},{!(player getVariable["Ace_captives_isHandcuffed", false] || player getVariable["Ace_captives_isZiptied", false] || player getVariable["Ace_captives_isSurrendering", false]) && (vehicle player == player)},{}],
            ["object",[player, 1, ["ACE_SelfActions"]]]
    ]
 ];
_array spawn Client_fnc_addAction;
