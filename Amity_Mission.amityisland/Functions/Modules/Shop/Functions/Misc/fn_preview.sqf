disableSerialization;
if(!dialog) exitWith {};
params[["_type",""]];
private _index = lbCurSel 1500;
if(_index == -1) exitWith {};
private _data = call compile(lnbData [1500, [_index, 0]]);
private _classname = _data select 1;

if(_type == "clothingpreview") exitWith {
      player forceAddUniform _classname;
};

if(_type == "backpackpreview") exitWith {
      removeBackpack player;
      player addBackpack _classname;
};

if(_type == "facepreview") exitWith {
      removeGoggles player;
      player addGoggles _classname;
};

if(_type == "headpreview") exitWith {
      removeHeadgear player;
      player addHeadgear _classname;
};
