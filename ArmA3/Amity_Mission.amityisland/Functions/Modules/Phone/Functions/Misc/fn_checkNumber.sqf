//returns true or false;
params["_number", ""];
private _digits = _number splitString "";
private _correct = true;
{
      if(parseNumber(_x) <= 0 && _x != "0") exitWith {
            _correct = false;
      };
} foreach _digits;
_correct;
