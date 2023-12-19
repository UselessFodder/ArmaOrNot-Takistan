diag_log "*** Checking End Game";	

//if all mission objectives are true, then execute end scenario for all players
if (MissionObjectives select 0 == true && MissionObjectives select 1 == true && MissionObjectives select 2 == true && MissionObjectives select 3 == true && MissionObjectives select 4 == true && MissionObjectives select 5 == true && MissionObjectives select 6 == true && MissionObjectives select 7 == true) then {
	diag_log "*** End Game Misisons Met";	
	"endMission.sqf" remoteExec ["execVM",2];
} else {
	//if not, save the state
	diag_log "*** End Game Conditions NOT met. Saving.";	
	//"saveState.sqf" remoteExec ["execVM",2];
	execVM "saveState.sqf";
}; 
