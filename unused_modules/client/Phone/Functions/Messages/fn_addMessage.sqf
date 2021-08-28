params["", "", ["_receiver", ""], ["_sender", ""]];
{
      _x params["", "", "_number", "", "", "_messages"];
      if(_number == _receiver || _number == _sender) then {
            _messages pushBack _this;
      };
} forEach phone_var_numbers;
