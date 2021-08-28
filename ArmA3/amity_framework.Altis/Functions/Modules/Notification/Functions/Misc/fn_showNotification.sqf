_this spawn {
      params[["_text", ""], ["_sound", false]];
      if(_text == "") exitWith {};
      disableSerialization;
      private _config = missionConfigFile >> "Notification";

      _text = [_text] call ClientModules_Notification_fnc_convertToFormat;
      private _display = uiNamespace getVariable["RscNotification", displayNull];
      if(isNull _display) then { (getNumber(_config >> "Config" >> "layer")) cutRsc ["RscNotification", "PLAIN"]; _display = uiNamespace getVariable["RscNotification", displayNull]; };
      private _dispGroup = [_display] call ClientModules_Notification_fnc_createGroup;
      private _ctrl_strip = _dispGroup controlsGroupCtrl 1000;
      private _ctrl_text = _dispGroup controlsGroupCtrl 1001;
      _ctrl_text ctrlSetStructuredText parseText format["<t size='0.8' font='PuristaLight' color='#c4c4c4'>%1</t>", _text];
      private _bar = (getNumber(_config >> "Size" >> "bar")) * safezoneW;
      private _width = (getNumber(_config >> "Size" >> "width")) * safezoneW;
      private _heigth = (getNumber(_config >> "Size" >> "height")) * safezoneH;



      waitUntil{ctrlCommitted _dispGroup && ctrlCommitted _ctrl_text && ctrlCommitted _ctrl_strip};
      private _filtered = [];
      {
            if(!isNull _x) then { _filtered pushBack _x; waitUntil{ ctrlCommitted _x; }};
      } forEach notification_var_displays;
      {
            private _pos = ctrlPosition _x;
            private _y = (_pos select 1) + _heigth * 1.2;
            if(_y < (getNumber(_config >> "Size" >> "yMax")) * safezoneH + safezoneY) then {
                  waitUntil{ctrlCommitted _x};
                  _pos set[1, _y];
                  _x ctrlSetPosition _pos;
                  _x ctrlCommit 0.8;
            } else {
                  private _pos = ctrlPosition _x;
                  if(getText(missionConfigFile >> "Notification" >> "Position" >> "moveTo") == "left") then {
                        _pos set[0, safezoneX - (_pos select 3) * safezoneW];
                  } else {
                        _pos set[0, safezoneX + ((_pos select 3) + 1) * safezoneW];
                  };
                  _x ctrlSetPosition _pos;
                  _x ctrlSetFade 1;
                  _x ctrlCommit 1;
                  _x spawn {
                        waitUntil{ctrlCommitted _this};
                        ctrlDelete _this;
                  };
            };
      } forEach _filtered;
      notification_var_displays pushBack _dispGroup;
      _dispGroup ctrlShow true;
      private _y = (getNumber(_config >> "Size" >> "yStart")) * safezoneH + safezoneY;
      private _x = (getNumber(_config >> "Size" >> "xStart")) * safezoneW + safezoneX;
      _dispGroup ctrlSetPosition [_x, _y, _width, _heigth * 1.01];
      _ctrl_text ctrlSetPosition [_bar, 0, _width - _bar, _heigth];
      _ctrl_strip ctrlSetPosition [0, 0, _bar, _heigth];
      _dispGroup ctrlSetFade 0;
      _dispGroup ctrlCommit 1;
      _ctrl_text ctrlCommit 1;
      _ctrl_strip ctrlCommit 1;

      [_dispGroup] spawn {
            params[["_dispGroup", controlNull]];
            uiSleep 15;
            if(isNull _dispGroup) exitWith {};
            private _pos = ctrlPosition _dispGroup;
            if(getText(missionConfigFile >> "Notification" >> "Position" >> "moveTo") == "left") then {
                  _pos set[0, safezoneX - (_pos select 3) * safezoneW];
            } else {
                  _pos set[0, safezoneX + ((_pos select 3) + 1) * safezoneW];
            };
            _dispGroup ctrlSetPosition _pos;
            _dispGroup ctrlSetFade 1;
            _dispGroup ctrlCommit 1;
            waitUntil{ctrlCommitted _dispGroup};
            ctrlDelete _dispGroup;
      };
      notification_var_displays pushBack _dispGroup;
      if(_sound) then {
            player say getText(_config >> "Config" >> "sound");
      };
};
