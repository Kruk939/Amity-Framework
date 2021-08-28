if (!alive player) exitWith {};
if (vehicle player != player) exitWith {};
//if () exitWith {}; //Check for being escorted
//if () exitWith {}; //Check for being restrained/tied
//if () exitWith {}; //Do i need more checks?

player setVariable ["surrender", true, false]; //Set surrender to true
//Thats very toxic way to do it tho - drops fps like crazy and moves player 0.01m forward all the time. add sleep?
while { player getVariable ["surrender", false]}  do {
	player playMove "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"; //start
	if (!alive player) then {
		player setVariable ["surrender", nil, false];
      };
};
player playMoveNow "AmovPercMstpSsurWnonDnon_AmovPercMstpSnonWnonDnon"; //stop
