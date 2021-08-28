private _freqs = [] call ClientModules_Phone_fnc_getAllUsedFreq;
private _freq = [10, "0123456789"] call Client_fnc_generateString;
while { _freq in _freqs} do {
      _freq = [10, "0123456789"] call Client_fnc_generateString;
};
_freq;
