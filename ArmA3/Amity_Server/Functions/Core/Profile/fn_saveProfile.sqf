params[["_player", objNull], ["_data", []]];
if(Amity_Server_Inited) then {
      private _id = _player getVariable['profile_id', -1];
      if(_id != -1) then {
            private _pos = getPosATL _player;
            _data params[["_thirst", 0], ["_hunger", 0]];
            private _inventory = [_player] call Client_fnc_getItems;
            _inventory params["_items", "_clothes", "_weapons"];
            private _query = [format["core_profile_save:%1:%2:%3:%4:%5:%6:%7", _id, _items, _clothes, _weapons, _pos, _hunger, _thirst], 2] call ExternalS_fnc_ExtDBasync;
      };
};
