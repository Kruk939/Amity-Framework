private _array = [
      [
            ["TICKET_WRITE", localize "STR_TICKET_GIVE_TICKET", "", { [_target] call ClientModules_Ticket_fnc_ticket_give_open; },{(player getVariable["ticket_write", -1]) > 0}],
            ["class",["Civilian", 0, ["ACE_Torso"],true]]
      ]
];
_array call Client_fnc_addAction;
