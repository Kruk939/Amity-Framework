private _config = (missionConfigFile >> "Robbery");
private _mainBankClass = getText(_config >> "MainBank" >> "bankClass");
private _mainBankSafeClass = getText(_config >> "MainBank" >> "Safe" >> "safe");
private _mainBankSafeRelPos = getArray(_config >> "MainBank" >> "Safe" >> "relPos");
private _mainBankSafeRelDir = getNumber(_config >> "MainBank" >> "Safe" >> "relDir");
Robbery_var_main_banks = nearestObjects[[0,0,0], [_mainBankClass], 35500];
{
      private _safe = createVehicle[_mainBankSafeClass, (_x modelToWorld _mainBankSafeRelPos), [], 0, "CAN_COLLIDE"];
      _safe setDir ((getDir _x) + _mainBankSafeRelDir);
      _safe setPos (_x modelToWorld _mainBankSafeRelPos);
} forEach Robbery_var_main_banks;
