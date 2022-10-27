image_angle += angl;
if(!i0){
	switch(mode){
		case 0: color = c_blue; break;
		case 1: color = make_color_hsv(125, 255, 255); break;
		case 2: color = #D4E410; break;		
		default: color = -1;
	}
	i0 = true;
}
if(point_distance(x, y, X_CENTER, Y_CENTER) > 300){
	//direction = 360 - 120*mode;
	direction = point_direction(x,y,X_CENTER,Y_CENTER) + 90;
	//i0 = true;
} else {
	//direction = point_direction(x,y,X_CENTER,Y_CENTER) + 90;
	direction = 360 - 120*mode;
}

if(t > 200 && t % 12 == 0 && t < 530) {
	var bul = instance_create_layer(x, y, "Bullets", oOjiBr4Bullet);
	bul.direction = random(360);
	bul.speed = random_range(2,4);
	bul.image_xscale = 0.5;
	bul.image_yscale = 0.5;
	bul.color = color;
}
if(t > 530 && t % 4 == 0 && t < 661) {
	var bul = instance_create_layer(x, y, "Bullets", oOjiBr4Bullet);
	bul.direction = random(360);
	bul.speed = random_range(1,2);
	var rng = random_range(0.3, 0.5);
	bul.image_xscale = rng;
	bul.image_yscale = rng;
	bul.color = color;
}
if(t == 919 || t == 978 || t == 1016){
	var PP = polygon_params_create();
	PP.sprite_index = sFlower;
	PP.image_xscale = 0.5;
	PP.image_yscale = 0.5;	
	PP.color = color;
	polygon_create(x,y,"Bullets", random(360), irandom_range(3,5), 3, 3, oOjiBr4Bullet, PP)
}
t++;