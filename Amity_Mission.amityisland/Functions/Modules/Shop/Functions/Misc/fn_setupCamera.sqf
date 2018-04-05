if(!Shop_var_preview) then {
      Shop_var_saved_gear = [] call Client_fnc_getItems;
      if(!isNull Shop_var_camera) then {
            Shop_var_camera cameraEffect ["TERMINATE","BACK"];
            camDestroy Shop_var_camera;
      };
      Shop_var_camera = "CAMERA" camCreate getPos player;
      player switchMove "AmovPercMstpSnonWnonDnon";
      showCinemaBorder false;
      Shop_var_camera cameraEffect ["Internal", "Back"];
      Shop_var_camera camSetTarget (player modelToWorld [-2.2,1,2.2]);
      Shop_var_camera camSetPos (player modelToWorld [-3,2,3]);
      Shop_var_camera camSetFOV .33;
      Shop_var_camera camSetFocus [40, 0];
      Shop_var_camera camCommit 0;
      Shop_var_preview = true;
};
