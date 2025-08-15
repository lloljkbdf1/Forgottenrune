obj_title.image_alpha=0
global.start_room=rm_test2
global.start_x=150
global.start_y=245
global.new_game=false
if file_exists("forgottenrune.ini"){
	ini_open("forgottenrune.ini")
	global.start_room=ini_read_real("Save1","room",rm_test2)
	global.start_x=ini_read_real("Save1","x",150)
	global.start_y=ini_read_real("Save1","y",245)
	ini_close()
}