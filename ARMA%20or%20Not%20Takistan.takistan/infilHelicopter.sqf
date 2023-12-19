params ["_location"];

//_spawnHeli = [[getPos _location select 0, getPos _location select 1, 10], WEST, ["CUP_B_UH60M_US"],[],[],[],[],[],270] call BIS_fnc_spawnGroup;
_spawnHeli = createVehicle ["CUP_B_UH60M_US",_location, [],0,"FLY"];
_spawnHeli flyInHeight 10;
_spawnHeli setdir 270;
createVehicleCrew _spawnHeli;
_wp = group _spawnHeli addWaypoint [(getPos insertHeli), 0];
_wp setWaypointType "MOVE";  

sleep 30;
deleteVehicleCrew _spawnHeli;
deleteVehicle _spawnHeli;