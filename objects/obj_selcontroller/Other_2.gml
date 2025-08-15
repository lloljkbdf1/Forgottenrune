ini_open("forgottenrune.ini")
if ini_read_real("Save1","room",0)<1{
	obj_continue.y=9999
	obj_newgame.y-=32
	obj_settings.y-=32
	obj_credits.y-=32
	obj_newgame.sprite_index=spr_newgame_sel
}else{
obj_continue.sprite_index=spr_continue_sel
}
ini_close()