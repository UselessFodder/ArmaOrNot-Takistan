if (isServer) then {
	//default mission status
	MissionObjectives = [false,false,false,false,false,false,false,false];
	
	//check if a save exists
	_saveCheck = profileNamespace getVariable "missionState";
	if (!isNil "_saveCheck") then{
		//if so, set array to saved objectives
		MissionObjectives = profileNamespace getVariable "missionState";
		diag_log "*** Mission File Found. Current Status:"; 
		diag_log format ["%1, %2, %3, %4, %5, %6, %7, %8",
			MissionObjectives select 0,	MissionObjectives select 1,	MissionObjectives select 2,	MissionObjectives select 3,	MissionObjectives select 4,	MissionObjectives select 5,	MissionObjectives select 6,	MissionObjectives select 7]; 

	} else {
		diag_log "*** No saved data found. Generating new save file."; 
	};
	
	//broadcast
	publicVariable "MissionObjectives";

	//clear objectives based on save
	if(MissionObjectives select 0 == true) then {
		[ "_op1_1", "SUCCEEDED" ] call BIS_fnc_taskSetState;
		[ "_op1_2", "SUCCEEDED" ] call BIS_fnc_taskSetState;
	};
	
	if(MissionObjectives select 1 == true) then {
		[ "_op2_1", "SUCCEEDED" ] call BIS_fnc_taskSetState;
		[ "_op2_2", "SUCCEEDED" ] call BIS_fnc_taskSetState;
	};
	
	if(MissionObjectives select 2 == true) then {
		[ "_op3_1", "SUCCEEDED" ] call BIS_fnc_taskSetState;
	};
	
	if(MissionObjectives select 3 == true) then {
		[ "_op4_1", "SUCCEEDED" ] call BIS_fnc_taskSetState;
		[ "_op4_2", "SUCCEEDED" ] call BIS_fnc_taskSetState;
	};
	
	if(MissionObjectives select 4 == true) then {
		[ "_op5_1", "SUCCEEDED" ] call BIS_fnc_taskSetState;	
	};
	
	if(MissionObjectives select 5 == true) then {
		[ "_op6_1", "SUCCEEDED" ] call BIS_fnc_taskSetState;
		[ "_op6_2", "SUCCEEDED" ] call BIS_fnc_taskSetState;	
	};
	
	if(MissionObjectives select 6 == true) then {
		[ "_op7_1", "SUCCEEDED" ] call BIS_fnc_taskSetState;
		[ "_op7_2", "SUCCEEDED" ] call BIS_fnc_taskSetState;	
	};
	
	if(MissionObjectives select 7 == true) then {
		[ "_op8_1", "SUCCEEDED" ] call BIS_fnc_taskSetState;
		[ "_op8_2", "SUCCEEDED" ] call BIS_fnc_taskSetState;	
	};
	
	
	
};
