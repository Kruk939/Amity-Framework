params[["_type", ""]];
if(_type == "") exitWith {};
if(!dialog) exitWith {};
disableSerialization;
private _display = findDisplay 14001;
if(isNull _display) exitWith {};
private _target = _display getVariable["target", objNull];
if(isNull _target) exitWith { closeDialog 0; };
if(_type == "ACCEPT") exitWith {
      private _amount = _display getVariable["amount", 0];
      private _reason = _display getVariable["reason", ""];
      private _points = _display getVariable["points", 0];
      private _preset = _display getVariable["preset", -1];
      [player, _target,[_amount, _reason, _points, _preset]] remoteExec["ServerModules_Ticket_fnc_insertTicket", 2];
      closeDialog 0;
};
if(_type == "EXIT") exitWith {
      [["STR_TICKET_ACTION_REFUSED", player getVariable["name", ""]], true] remoteExec["Client_fnc_domsg", _target];
      closeDialog 0;
};
