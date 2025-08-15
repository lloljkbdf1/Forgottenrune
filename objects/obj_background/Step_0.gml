if running=true{
	timer+=0.05
}
if timer>=1{
	idk2+=0.75
	obj_background.image_alpha+=0.05
	if obj_background.y>130{
		obj_background.y-=idk/idk2
		obj_background.y-=idk/idk2
		obj_background.y-=idk/idk2
		obj_background.y-=idk/idk2
	}
	running=false
}