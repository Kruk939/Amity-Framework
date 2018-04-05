params[["_type",""]];
private _temp = [];
{
      private _var = _x select 0;
      if(_var == _type) exitWith {
            _temp = _x;
      };
} foreach RPF_Stores;
if(count _temp == 0 ) exitWith {};
disableSerialization;
private _ok = createDialog "Amity_store";
if(!_ok) exitWith {};
ctrlSetText [1200, (_temp select 2)];
[(_temp select 3), player, "ClientModules_Shopsystem_fnc_receive"] remoteExec ["ServerModules_Shopsystem_fnc_getShops", 2];

waitUntil {isNull (findDisplay 9900)};
if(RPF_preview_active) then {
      [] call ClientModules_ShopSystem_fnc_gearReset;
      if(!isNull ORP_shop_cam) then {
            ORP_shop_cam cameraEffect ["TERMINATE","BACK"];
            camDestroy ORP_shop_cam;
      };
      RPF_preview_active = false;
};
