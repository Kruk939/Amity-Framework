params[["_length", 5], ["_chars", "abcdefghijklmnopqrstuvwxyz0123456789"]];
private _count = count _chars;
private _str = [];
private _choose = _chars splitString "";
private _i = 0;
for [{}, { _i < _length; }, { _i = _i + 1; }] do {
    private _rand = floor (random _count);
    _str pushBack (_choose select _rand);
};
_str = _str joinString "";
_str;
