//move player
var up=keyboard_check(vk_up)
var down=keyboard_check(vk_down)
var left=keyboard_check(vk_left)
var right=keyboard_check(vk_right)
var runkey=keyboard_check(vk_shift)
if (runkey){
	movespeed=runspeed
}else{
	movespeed=walkspeed
}
xspeed=(right-left)*movespeed
yspeed=(down-up)*movespeed
x+=xspeed
y+=yspeed
//animation :)
if(xspeed>0){
	sprite_index=spr_kriswr
}if(xspeed<0){
	sprite_index=spr_kriswl
}
if(yspeed>0){
	sprite_index=spr_kriswd
}if(yspeed<0){
	sprite_index=spr_kriswu
}
if(xspeed!=0 or yspeed!=0)
{
	image_speed=1
}else{
	image_speed=0
	image_index=0
}