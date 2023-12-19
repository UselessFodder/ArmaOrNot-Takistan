//ensure this only saves on server
if(isServer) then {
	//start save log
	diag_log "Clearing Save";	
	
	//set all objectives to false
	MissionObjectives = [false,false,false,false,false,false,false,false];
	
	//set array to save
	_missionStateArray = MissionObjectives;	
	
	//save variables to namespace
	profileNamespace setVariable ["missionState", _missionStateArray];	

	//save namespace
	saveProfileNamespace;
	
	//diag save complete
	diag_log "Clear Save Complete";

};