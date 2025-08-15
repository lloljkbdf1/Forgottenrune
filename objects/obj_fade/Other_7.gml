room_goto(target_room)
obj_vessel.x=target_x
obj_vessel.y=target_y
//facing
if facing=0{
	obj_vessel.sprite_index=spr_kriswr
}
if facing=1{
	obj_vessel.sprite_index=spr_kriswl
}
if facing=2{
	obj_vessel.sprite_index=spr_kriswd
}
if facing=3{
	obj_vessel.sprite_index=spr_kriswu
}
// fade out
image_speed = -1
