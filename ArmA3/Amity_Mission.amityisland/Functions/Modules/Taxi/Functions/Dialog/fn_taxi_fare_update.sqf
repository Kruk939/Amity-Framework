params[["_driver", ""], ["_fare", []], ["_kilometers", []], ["_minutes", []], ["_total", 0]];
disableSerialization;
private _vehicle = vehicle player;
if(_vehicle == player || !(_vehicle getVariable["taxi_vehicle", false])) exitWith {
      [] call ClientModules_Taxi_fnc_taxi_fare_delete;
};
private _display = uiNamespace getVariable["taxi_var_display", displayNull];
if(isNull _display) exitWith {};
//controls
private _group = _display displayCtrl 2300;

//information
private _text_driver = _group controlsGroupCtrl 1000;
private _text_kilometer_price = _group controlsGroupCtrl 1001;
private _text_minute_price = _group controlsGroupCtrl 1002;
_fare params["_kilo", "_min"];
_text_driver ctrlSetText _driver;
_text_kilometer_price ctrlSetText format["$%1/km", (round(_kilo * 10)) / 10];
_text_minute_price ctrlSetText format["$%1/min", round((_min * 10)) / 10];

//kilometers
private _text_kilometer_count = _group controlsGroupCtrl 1010;
private _text_kilometers_sum = _group controlsGroupCtrl 1011;
_kilometers params["_k_count", "_k_sum"];
_text_kilometer_count ctrlSetText format["%1 km", round((_k_count * 10)) / 10];
_text_kilometers_sum ctrlSetText format["$%1",  round((_k_sum * 10)) / 10];

//minutes
private _text_minutes_count = _group controlsGroupCtrl 1020;
private _text_minutes_sum = _group controlsGroupCtrl 1021;
_minutes params["_m_count", "_m_sum"];
_text_minutes_count ctrlSetText format["%1 min", round((_m_count * 10)) / 10];
_text_minutes_sum ctrlSetText format["$%1", round((_m_sum * 10)) / 10];

//sum
private _text_sum = _group controlsGroupCtrl 1030;
_text_sum ctrlSetText format["$%1", round((_total * 10)) / 10];
