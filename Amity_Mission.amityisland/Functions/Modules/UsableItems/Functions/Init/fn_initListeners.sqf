player addEventHandler["InventoryOpened", {_this call ClientModules_UsableItems_fnc_inventoryOpened;}];
player addEventHandler["ContainerOpened", {_this call ClientModules_UsableItems_fnc_inventoryOpened;}];

private _onPlaced = {
      params[["_obj", objNull]];
      if(isNull _obj) exitWith {};
      switch(typeOf _obj) do {
            case "CG_Spikes_Extended": {
                  [_obj] remoteExec ["ClientModules_UsableItems_fnc_spikeStripPlaced", 2];
            };
      };
};

["onUsableItemPlaced", _onPlaced] call Client_fnc_eventAdd;
