var up=keyboard_check_pressed(vk_up)
var down=keyboard_check_pressed(vk_down)
var enter=keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z"))
var xkey=keyboard_check_pressed(ord("X"))
ini_open("forgottenrune.ini")
var newplayer=ini_read_real("Save1","room",0)
if down{
		
	//old player:0=continue,1=newgame,2=settings,3=credits
		num=num+1
		if num>3 and newplayer!=0{
		num=0
		}
		if num>2 and newplayer=0{
		num=0
		}
		if num=0 and newplayer!=0{
			obj_newgame.sprite_index=spr_newgame
			obj_settings.sprite_index=spr_settings
			obj_credits.sprite_index=spr_credits
			obj_continue.sprite_index=spr_continue_sel
		}
		else if num=1 and newplayer!=0{
			obj_continue.sprite_index=spr_continue
			obj_settings.sprite_index=spr_settings
			obj_credits.sprite_index=spr_credits
			obj_newgame.sprite_index=spr_newgame_sel
		}
		else if num=2 and newplayer!=0{
			obj_newgame.sprite_index=spr_newgame
			obj_continue.sprite_index=spr_continue
			obj_credits.sprite_index=spr_credits
			obj_settings.sprite_index=spr_settings_sel
		}
		else if num=3 and newplayer!=0{
			obj_newgame.sprite_index=spr_newgame
			obj_settings.sprite_index=spr_settings
			obj_continue.sprite_index=spr_continue
			obj_credits.sprite_index=spr_credits_sel
		}
		if num=0 and newplayer=0{
			obj_settings.sprite_index=spr_settings
			obj_credits.sprite_index=spr_credits
			obj_newgame.sprite_index=spr_newgame_sel
		}
		else if num=1 and newplayer=0{
			obj_settings.sprite_index=spr_settings_sel
			obj_credits.sprite_index=spr_credits
			obj_newgame.sprite_index=spr_newgame
		}
		else if num=2 and newplayer=0{
			obj_newgame.sprite_index=spr_newgame
			obj_credits.sprite_index=spr_credits_sel
			obj_settings.sprite_index=spr_settings
		}
		show_debug_message(num)
}
if up{
		
	//old player:0=continue,1=newgame,2=settings,3=credits
		num=num-1
		if num<0 and newplayer!=0{
		num=3
		}
		if num<0 and newplayer=0{
		num=2
		}
		if num=0 and newplayer!=0{
			obj_newgame.sprite_index=spr_newgame
			obj_settings.sprite_index=spr_settings
			obj_credits.sprite_index=spr_credits
			obj_continue.sprite_index=spr_continue_sel
		}
		else if num=1 and newplayer!=0{
			obj_continue.sprite_index=spr_continue
			obj_settings.sprite_index=spr_settings
			obj_credits.sprite_index=spr_credits
			obj_newgame.sprite_index=spr_newgame_sel
		}
		else if num=2 and newplayer!=0{
			obj_newgame.sprite_index=spr_newgame
			obj_continue.sprite_index=spr_continue
			obj_credits.sprite_index=spr_credits
			obj_settings.sprite_index=spr_settings_sel
		}
		else if num=3 and newplayer!=0{
			obj_newgame.sprite_index=spr_newgame
			obj_settings.sprite_index=spr_settings
			obj_continue.sprite_index=spr_continue
			obj_credits.sprite_index=spr_credits_sel
		}
		if num=0 and newplayer=0{
			obj_settings.sprite_index=spr_settings
			obj_credits.sprite_index=spr_credits
			obj_newgame.sprite_index=spr_newgame_sel
		}
		else if num=1 and newplayer=0{
			obj_settings.sprite_index=spr_settings_sel
			obj_credits.sprite_index=spr_credits
			obj_newgame.sprite_index=spr_newgame
		}
		else if num=2 and newplayer=0{
			obj_newgame.sprite_index=spr_newgame
			obj_credits.sprite_index=spr_credits_sel
			obj_settings.sprite_index=spr_settings
		}
		show_debug_message(num)
}
if enter and num=0 and newplayer!=0{
	ini_open("forgottenrune.ini")
	var rom=ini_read_real("Save1","room","1")
	var xvalue=ini_read_real("Save1","x","100")
	var yvalue=ini_read_real("Save1","y","100")
	room_goto(rom)
	instance_create_layer(xvalue,yvalue,"Player",obj_vessel)
	ini_close()
}
if enter and num=1 and newplayer!=0{
	ini_open("forgottenrune.ini")
	ini_write_real("Save1","room",1)
	var rom=ini_read_real("Save1","room","1")
	var instantiated=instance_create_depth(0,0,-9999,obj_fade)
	instantiated.target_room=rom
	instantiated.target_x=149
	instantiated.target_y=184
	instance_create_layer(9999,9999,"Player",obj_vessel)
	ini_close()
}
if enter and num=2 and newplayer!=0{
	room_goto(4)//settings
}
if enter and num=3 and newplayer!=0{
	room_goto(3)//credits
}
if enter and num=0 and newplayer=0 and room=0{
	ini_open("forgottenrune.ini")
	room_goto(1)
	instance_create_layer(150,100,"Player",obj_vessel)
	ini_close()
}
if enter and num=1 and newplayer=0{
	room_goto(4)//settings
}
if enter and num=2 and newplayer=0{
	room_goto(3)//credits
}
if xkey and room=3{
	room_goto(0)//title
}
if xkey and room=4{
	room_goto(0)//title
}