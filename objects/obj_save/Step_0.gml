if place_meeting(x,y,obj_vessel){
	ini_open("forgottenrune.ini")
	ini_write_real("Save1","room",room)
	ini_write_real("Save1","x",obj_vessel.x)
	ini_write_real("Save1","y",obj_vessel.y)
	ini_write_real("Save1","facing",obj_vessel.facing)
	ini_close()
}