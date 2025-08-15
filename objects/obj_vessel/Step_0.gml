//move player
var up=keyboard_check(vk_up)
var down=keyboard_check(vk_down)
var left=keyboard_check(vk_left)
var right=keyboard_check(vk_right)
var runkey=keyboard_check(vk_shift)
if (runkey){
	movespeed=runspeed
    show_debug_message(sprite_get_speed(sprite_index))
}else{
	movespeed=walkspeed
}
xspeed=(right-left)*movespeed
yspeed=(down-up)*movespeed
//collision :)
if(place_meeting(x+xspeed,y+yspeed,obj_collide)){
xspeed=0
yspeed=0
}
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
x[0]=round(x[0.1])
y[0]=round(y[0.1])
//facing direction saving
if sprite_index=spr_kriswd{
	facing=2
}
if sprite_index=spr_kriswu{
	facing=3
}
if sprite_index=spr_kriswl{
	facing=1
}
if sprite_index=spr_kriswr{
	facing=0
}
