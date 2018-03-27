params[["_type", ""]];
if(isNull Showroom_var_light) then {
      private _class =  getText(missionConfigFile >> "Showroom" >> "Camera" >> "Light" >> "className");
      private _pos = getArray(missionConfigFile >> "Showroom" >> "Camera" >> "Light" >> "position");
      Showroom_var_light = _class createVehicleLocal _pos;
      Showroom_var_light setPosATL _pos;
};
private _types = getArray(missionConfigFile >> "Showroom" >> "Camera" >> "Config" >> "vehicles");
{
      _x params["_t", "_pos", "_dir"];
      if(_t == _type) exitWith {
            Showroom_var_camera_running = true;
            if(isNull Showroom_var_camera) then {
                  Showroom_var_camera = "camera" camCreate _pos;
            };
            Showroom_var_camera setPosATL _pos;
            showCinemaBorder true;
            Showroom_var_camera cameraEffect ["INTERNAL", "BACK"];
            Showroom_var_camera camSetFov 0.75;
            Showroom_var_camera setDir _dir;
            Showroom_var_camera camCommit 0;
            [] spawn {
                  while {Showroom_var_camera_running} do {
                        if(!isNull Showroom_var_vehicle) then {
                              Showroom_var_vehicle setDir ((getDir Showroom_var_vehicle) + 0.2);
                              uiSleep 0.01;
                        };
                  };
                  Showroom_var_camera cameraEffect ["TERMINATE","BACK"];
                  camDestroy Showroom_var_camera;
            };
      };
} forEach _types;
