params[["_string", ""]];
private _newArray = [];
private _string_array = _string splitString "";
private _len = count _string_array;
private _i = 0;
for [{}, {_i < _len}, {_i = _i + 1; }] do {
      private _c = _string_array select _i;
      if(_c == "\") then {
            if(_i + 1 < _len) then {
                  if((_string_array select (_i + 1)) == "n") then {
                        _newArray pushBack "<";
                        _newArray pushBack "b";
                        _newArray pushBack "r";
                        _newArray pushBack "/";
                        _newArray pushBack ">";
                        _i = _i + 1;
                  } else {
                        _newArray pushBack _c;
                  };
            };
      } else {
            _newArray pushBack _c;
      };
};
_newArray joinString "";
