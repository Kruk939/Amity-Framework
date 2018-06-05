if(Resources_var_is_fishing) exitwith {}; //not fishing twice

Resources_var_is_fishing = true;
//getting config to use later
private _sounds = (getArray(missionConfigFile >> "Resources" >> "Fishing" >> "Sounds"));
private _animations = (getArray(missionConfigFile >> "Resources" >> "Fishing" >> "Animations"));
private _standardFish = (getArray(missionConfigFile >> "Resources" >> "Fishing" >> "StandardFish"));
private _rareFish = (getArray(missionConfigFile >> "Resources" >> "Fishing" >> "RareFish"));
private _chances = (getArray(missionConfigFile >> "Resources" >> "Fishing" >> "Chances"));

//throwing bait
player playmove (_animations select 0);
sleep 1;
private _speed = 20;
private _dir = (getdir player) + (-30) + random(60);
private _pos = getPos player;
_pos set[2, (_pos select 2) + 3];
private _vehicle = createVehicle [(getText(missionConfigFile >> "Resources" >> "Fishing" >> "FishClass")), _pos, [], 0, "CAN_COLLIDE"];
private _vel = velocity _vehicle;
_vehicle setVelocity [(_vel select 0) + (sin _dir * _speed), (_vel select 1) + (cos _dir * _speed), (_vel select 2) + 12];
playSound3D [(_sounds select 0), player, false, getPosASL player, 1, 1, 8];
sleep 2.5;

//if not water
if!(surfaceIsWater (getpos _vehicle)) exitwith {
      hint "You've lost the bait!";
      deletevehicle _vehicle;
      Resources_var_is_fishing = false;
};


hint "Nice throw!";
playSound3D [_sounds select 1, player, false, getPosASL _vehicle, 25, 1, 85];

//fishing simulation
private _timeOut = 0;
private _total = round (random(6));
private _myStartSpot = getpos player;
private _fail = false;
sleep 3;
private _i = 0;
for [{}, { _i < _total; }, { _i = _i + 1; }] do {
      sleep 3;
      if(_myStartSpot distance player > 25) exitwith { _fail = true; };
};

//to far away
if(_fail) exitwith {
      hint "You went too far away, and you've lost the bait!";
      deletevehicle _vehicle;
      Resources_var_is_fishing = false;
};

//reaction, waiting for input
playSound3D [(_sounds select 1), player, false, getPosASL player, 15, 1, 45];
hint "You've catched something, press Windows now!";
Resources_var_reacted = 1;
sleep 1;
if(Resources_var_reacted == 1) then { Resources_var_reacted = 2; }; //not fast enough


_dir = _dir - 180;
_vel = velocity _vehicle;
_speed = 22;
_timeOut = 0;
sleep 0.5;

playSound3D [_sounds select 0, player, false, getPosASL player, 1, 1, 8];
player playmove (_animations select 1);
while{_timeOut < 12 && _vehicle distance player > 5} do {
      _vehicle setpos [getpos _vehicle select 0, getpos _vehicle select 1, (getpos _vehicle select 2) + 0.2];
      _vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+(cos _dir*_speed),(_vel select 2) + random(2)];
      sleep 1;
      _timeOut = _timeOut + 1;
      player playaction (_animations select 2);
};
playSound3D [_sounds select 1, player, false, getPosASL player, 5, 1, 45];
player addmagazine (getArray(missionConfigFile >> "Resources" >> "Fishing" >> "Bait"));
deletevehicle _vehicle;

if(Resources_var_reacted == 3) then {
      private _chance = [currentWeapon player, _chances] call {
            params["_curWep", "_chances"];
            private _chance = 0;
            {
                  _x params["_class", "_chan"];
                  if((toLower _curWep) == (toLower _class)) exitWith {
                        _chance = _chan;
                  };
            } foreach _chances;
            _chance;
      };
      private _myfish = _standardFish select 0;
      if(_chance > random(100)) then {
            _myFish = _rareFish call BIS_fnc_selectRandom;
      } else {
            _myFish = _standardFish call BIS_fnc_selectRandom;
      };

      hint "You've catch something!";
      [player, _myFish, true] call CBA_fnc_addItem;
} else {
      hint "You were too slow.";
};
Resources_var_is_fishing = false;
