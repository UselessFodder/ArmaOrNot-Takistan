/*
	TODO: o Add spinning camera and final stats (players killed, enemies killed, hostages killed, time played)
			o play music
*/

sleep 10;

titleText ["Your have cleared the Taliban forces in this area. Pack your bags: This deployment is over...", "PLAIN", 2];

sleep 10;

// End mission for all players
["end1", true] call BIS_fnc_endMission;