params[["_display", objNull]];
if(isNull _display) exitWith { controlNull; };
private _config = missionConfigFile >> "Notification";
private _group = _display ctrlCreate ["RscControlsGroup", -1];
private _strip = _display ctrlCreate ["RscText", 1000, _group];
private _text = _display ctrlCreate ["RscStructuredText", 1001, _group];
private _y = (getNumber(_config >> "Size" >> "yStart")) * safezoneH + safezoneY;
private _x = (getNumber(_config >> "Position" >> "xStart")) * safezoneW + safezoneX;
private _bar = (getNumber(_config >> "Size" >> "bar")) * safezoneW;
_group ctrlSetPosition[_x, _y, 0.180469 * safezoneW, 0 * safezoneH];
_strip ctrlSetPosition[0, 0, _bar, 0];
_text ctrlSetPosition[_bar, 0, 0.180469 * safezoneW - _bar, 0];

_strip ctrlSetBackgroundColor getArray(_config >> "config" >> "Background" >> "bar");
_text ctrlSetBackgroundColor getArray(_config >> "config" >> "Background" >> "text");
_group ctrlSetFade 1;
_group ctrlShow false;

_group ctrlCommit 0.1;
_text ctrlCommit 0.1;
_strip ctrlCommit 0.1;
_group;
