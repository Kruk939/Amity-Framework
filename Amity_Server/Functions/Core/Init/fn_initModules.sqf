diag_log "------------------------";
diag_log "Amity Server: Initing modules";
private _modules = [

];
{
      private _fnc = format["%1_fnc_init", _x];
      if(!isNil _fnc) then {
            diag_log format["Running: %1", _fnc];
            [] spawn (call compile _fnc);
      };
} foreach _modules;
diag_log "------------------------";
