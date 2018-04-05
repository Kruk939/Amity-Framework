//[[],[[16,"H_Cap_blk","item"]]]
params[["_toRemove",[]],["_toAdd",[]], ["_success", false], ["_transactionData",[]]];
private _toPay = _transactionData select 0;
private _cash = player getVariable["cash",0];
if(_success) then {
      if((count _toRemove) == 0 && (count _toAdd) == 0) exitWith {}; //something went wrong
      if((count _toAdd) != 0) then {
            player allowdamage false;
            if(isNil "shopholder") then {
                  shopholder = "plp_ct_woodboxlightsmall" createVehicleLocal (getpos player);
            };
            player disablecollisionwith shopholder;
            shopholder setpos (getposATL player);
            player allowdamage true;
            {
                  if((_x select 2) != "backpack") then {
                        shopholder addItemCargo [(_x select 1), (_x select 0)];
                  } else {
                        shopholder addBackpackCargo [(_x select 1), (_x select 0)];
                  };
            } forEach _toAdd;
      };
      if(count(_toRemove) != 0) then {
            {
                  private _i = 0;
                  private _count = _x select 0;
                  private _class = _x select 1;
                  private _type = _x select 2;
                  if(_type != "backpack") then {
                        for [{}, { _i < _count }, { _i = _i + 1; }] do {
                            player removeItem _class;
                        };
                  } else {
                        private _backpack = backpackContainer player;
                        [_backpack, _class, _count] call CBA_fnc_removeBackpackCargo;
                  };
            } forEach _toRemove;
      };
      closeDialog 0;
      if(_toPay >= 0) then {
            [format["You have paid $%1 for items", _toPay]] spawn ClientModules_Notification_fnc_domsg;
      } else {
            [format["You have been paid $%1 for items", 0 - _toPay]] spawn ClientModules_Notification_fnc_domsg;
      };

} else {
      [format["You dont have enough money. You need $%1 more.", (_toPay - _cash)]] spawn ClientModules_Notification_fnc_domsg;
      ctrlEnable [1701, true];
};
private _transactionsLeft = player getVariable["shopsystem_transaction",0];
if(_transactionsLeft > 0) then {
      player setVariable["shopsystem_transaction", (_transactionsLeft - 1)];
};
