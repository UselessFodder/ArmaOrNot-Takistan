//ensure this only saves on server
if(isServer) then {
	//start save log
	diag_log "Starting Save";	
	
	//get current mission objective state
	_missionStateArray = MissionObjectives;	
	
	//save variables to namespace
	profileNamespace setVariable ["missionState", _missionStateArray];	

	//save namespace
	saveProfileNamespace;
	
	//diag save complete
	diag_log "Save Complete";

};