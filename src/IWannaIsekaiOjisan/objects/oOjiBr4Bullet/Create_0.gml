color = choose( #9E353E, #8C1E24, #530206, #D4E410);
/*
Светло красный: 9E353E
Средне красный: 8C1E24
Тёмно красный: 530206
Жёлтый: D4E410
*/
//direction = random(360);
mode = -1;
X_CENTER = 625;
Y_CENTER = 475;

if(variable_instance_exists(id,"Polygon"))
{
	sprite_index = Polygon.sprite_index;
	image_xscale = Polygon.image_xscale;
	image_yscale = Polygon.image_yscale;
	color = Polygon.color;	
} else {
	speed = random_range(5,7);
	sprite_index = sSphere_custom;
}
