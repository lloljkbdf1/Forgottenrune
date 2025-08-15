if running=true{
	timer+=0.05
}
if timer>=1{
	idk2+=0.5
	obj_title.image_alpha+=0.05
	obj_glowything.image_alpha-=0.05
	if obj_title.y>64{
		var layerid=layer_get_id("Background")
		var backid=layer_background_get_id(layerid)
		layer_background_blend(backid,make_color_rgb(87,87,87))
		obj_title.y-=idk/idk2
		obj_title.y-=idk/idk2
		obj_title.y-=idk/idk2
		obj_title.y-=idk/idk2
	}
	running=false
}