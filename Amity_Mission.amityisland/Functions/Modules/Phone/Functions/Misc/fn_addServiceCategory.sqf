params[["_name", ""], "_function"];
if(_name == "" || isNil "_function") exitWith { false; };
if(typeName _function != "CODE") exitWith { false; };
phone_var_services pushBack _this;
true;
