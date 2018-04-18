disableSerialization;
params[["_type", ""]];
if(!dialog && _type != "close") exitWith {};

if(_type == "color") exitWith {
      private _index = lbCurSel 1500;
      if(_index >= 0) then {
            private _texture = lbData [1500, _index];
            _texture = getText(configfile >> "CfgIvoryTextures" >> _texture >> "texture");
            mechanic_var_selected_car setObjectTextureGlobal [0, _texture];
      };
};
if(_type == "material") exitWith {
      private _index = lbCurSel 1501;
      if(_index >= 0) then {
            private _data = call compile (lbData [1501, _index]);
            _data params ["_material", "_price"];
            _material = getText(configfile >> "CfgIvoryMaterials" >> _material >> "material");
            mechanic_var_selected_car setObjectMaterialGlobal [0, _material];
      };
};
if(_type == "apply") exitWith {
      private _count = ["openrp_mechanic_paint_can"] call Client_fnc_countItems;
      if(_count == 0) exitWith { hint "You don't have paint"; };
      _count = ["openrp_mechanic_paint_gun"] call Client_fnc_countItems;
      if(_count == 0) exitWith { hint "You don't have paint gun"; };
      private _index1500 = lbCurSel 1500;
      private _index1501 = lbCurSel 1501;
      if(_index1500 == -1 || _index1501 == -1) exitWith {};
      private _material = (call compile (lbData [1501, _index1501])) select 0;
      private _texture = lbData [1500, _index1500];
      private _onFinish = {
            (_this select 0) params ["_texture", "_material"];

            private _count = ["openrp_mechanic_paint_can"] call Client_fnc_countItems;
            if(_count == 0) exitWith { hint "You don't have paint"; };
            _count = ["openrp_mechanic_paint_gun"] call Client_fnc_countItems;
            if(_count == 0) exitWith { hint "You don't have paint gun"; };

            mechanic_var_previous_texture = getText(configfile >> "CfgIvoryTextures" >> _texture >> "texture");
            mechanic_var_previous_material = getText(configfile >> "CfgIvoryMaterials" >> _material >> "material");
            [player, "openrp_mechanic_paint_can"] call CBA_fnc_removeItem;
            [mechanic_var_selected_car, _texture, _material] remoteExec ["ServerModules_Garage_fnc_setColor", 2];
            ["You have painted a vehicle", true] spawn Client_fnc_domsg;
            closeDialog 0;
      };
      private _onFailure = {
            Hint "Cancelled";
            [player, "AmovPknlMstpSrasWrflDnon", 1] call ace_common_fnc_doAnimation;
      };
      [30, [_texture, _material],_onFinish,_onFailure,"Painting vehicle..."] call Client_fnc_progressBar;
};
if(_type == "close") exitWith {
      mechanic_var_selected_car setObjectMaterialGlobal [0, mechanic_var_previous_material];
      mechanic_var_selected_car setObjectTextureGlobal [0, mechanic_var_previous_texture];
      mechanic_var_previous_texture = "";
      mechanic_var_previous_material = "";
      mechanic_var_selected_car = objNull;
      if(dialog) then {
            closeDialog 0;
      };
};
