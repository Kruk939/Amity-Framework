private _array = [
    [
            ["ORP_Phone","Phone", "", {call ClientModules_Phone_fnc_phone_open;},{!(player getVariable["Ace_captives_isHandcuffed", false] || player getVariable["Ace_captives_isZiptied", false] || player getVariable["Ace_captives_isSurrendering", false]) && (count (player call TFAR_fnc_radiosList) != 0)},{}],
            ["object",[player, 1, ["ACE_SelfActions"]]]
    ]
 ];
_array spawn Client_fnc_addAction;
