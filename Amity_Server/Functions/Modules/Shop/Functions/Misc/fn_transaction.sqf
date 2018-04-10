params[["_shop_id", -1], ["_toBuy", []], ["_toSell", []], ["_player", objNull], ["_function", ""]];
if(_shop_id == -1 || isNull _player) exitWith {};
if(player getVariable["shop_var_inprogress", false]) exitWith {};
player setVariable["shop_var_inprogress", true, true];
if((count _toBuy == 0) && (count _toSell == 0)) exitWith {};
private _toPay = 0;
private _remove = [];
private _add = [];
private _message = "You don't have enough money";

{
      _x params["_category_id", "_id", "_count"];
      private _item = [_shop_id, _category_id, _id, _count] call ServerModules_Shop_fnc_getItem;
      if(count _item != 0) then {
            _item params["_id", "_class", "_type", "_price", ""];
            _toPay = _toPay + (_price * _count);
            _add pushBack[_class, _type, _count];
      };
} forEach _toBuy;

{
      _x params["_category_id", "_id", "_count"];
      private _item = [_shop_id, _category_id, _id] call ServerModules_Shop_fnc_getItem;
      if(count _item != 0) then {
            _item params["_id", "_class", "_type", "_price", ""];
            _toPay = _toPay - (_price * _count);
            _remove pushBack[_class, _type, _count];
      };
} forEach _toSell;
private _cash = _player getVariable["cash", 0];
if(_toPay <= _cash) then {
      {
            _x params["_category_id", "_id", "_count"];
            [_shop_id, _category_id, _id, 0 -_count] call ServerModules_Shop_fnc_handleItem;
      } forEach _toBuy;
      {
            _x params["_category_id", "_id", "_count"];
            [_shop_id, _category_id, _id, _count] call ServerModules_Shop_fnc_handleItem;
      } forEach _toSell;
      _player setVariable["cash", _cash - _toPay, true];
      _message = ["You have paid $%1 for items.", _cash];


      private _shop = [_shop_id] call ServerModules_Shop_fnc_getShop;
      _shop params["", "", "_faction_id", "", ""];
      if(typeName _faction_id != "OBJECT") then {
            private _type = "SUB";
            if(_toPay < 0) then {
                  _type = "ADD";
                  _toPay = 0 - _toPay;
            };
            [_faction_id, _type, _toPay] call Server_fnc_factionBankTransfer;
      };
} else {
      _add = [];
      _remove = [];
};
[_add, _remove, _message] remoteExec [_function, _player];
player setVariable["shop_var_inprogress", false, true];
