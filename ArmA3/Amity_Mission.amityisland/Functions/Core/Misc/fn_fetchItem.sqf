params["_class", ""];
if(_class == "") exitWith {[]};
private _section = switch (true) do {
      case (isClass(configFile >> "CfgMagazines" >> _class)): {"CfgMagazines"};
      case (isClass(configFile >> "CfgWeapons" >> _class)): {"CfgWeapons"};
      case (isClass(configFile >> "CfgVehicles" >> _class)): {"CfgVehicles"};
      case (isClass(configFile >> "CfgGlasses" >> _class)): {"CfgGlasses"};
};
if (!(_section isEqualType "") || {!isClass(configFile >> _section >> _class)} || {_section == ""}) exitWith {[]};
private _config = configFile >> _section >> _class;
private _displayName = getText(_config >> "displayName");
private _picture = getText(_config >> "picture");
private _desc = getText(_config >> "descriptionshort");
[_class, _displayName, _picture, _desc];
