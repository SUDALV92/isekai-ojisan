if( !avoidance_is_playing() ) 
{
	avoidance_finish();
	return;
}

var t = avoidance_get_step();

#region SUDALV
if( t == Ojisan.SUDALV + 0 )
{
	N = 10;
	i = 5;
	repeat(N)
	{
		angle = random(360);
		repeat( 30 )
		{
			instance_create_layer( 300, 200, "Bullets", oOjiSudBullet,
			{
				speed : i + random_range( -0.4, 0.4 ),
				direction : angle + random_range( -5, 5 ),
				color : red_light,
				mode : 0
			});
			instance_create_layer( 950, 200, "Bullets", oOjiSudBullet,
			{
				speed : i + random_range( -0.4, 0.4 ),
				direction : angle + random_range( -5, 5 ),
				color : red_light,
				mode : 0
			});
			angle += 360 / 30;
			i -= 0.5;
		}
	}
	executor_create( 1, scrOjiSudShake, 60 );
}
if( t == Ojisan.SUDALV + 60 )
{
	camera_set_view_pos( view_get_camera( 0 ), 0, 0 );	
}
if( t == Ojisan.SUDALV + 60 )
{
	executor = executor_create( 8, scrOjiSudA1Rain, 1000 );
	executor.yellow = yellow;
}
#endregion

#region Maxim_new
if( t == Ojisan.Maxim + 0 )
{
	
}
#endregion

#region BR4
if(t == Ojisan.BR4){
	scrBR4_playerTeleport(X_CENTER, 455);
	instance_create_layer(425, Y_CENTER, "BehindPlayer", oOjiBr4Block);	
	instance_create_layer(0, 0, "Bullets", oOjiBr4Flash);	
	for(i = 0; i < 3; i++){
		var print = instance_create_layer(X_CENTER, Y_CENTER, "BehindPlayer", oOjiBr4Print2);
		print.mode = i;
	}
	instance_create_layer(X_CENTER, Y_CENTER, "BehindPlayer", oOjiBr4Print);
	
}
if(t >= Ojisan.BR4 + 0  && t <= Ojisan.BR4 + 80)
{
	if(t == Ojisan.BR4){
		circle_create(1250, Y_CENTER, "Bullets", random(10), 60, oOjiBr4CircleBullet);
	}
	if(t % 8 == 0) {
		var bul = instance_create_layer(1250, Y_CENTER, "Bullets", oOjiBr4Bullet);
		bul.direction = random_range(125,245);
		bul.speed = random_range(5,8);
		bul.image_xscale = 0.5;
		bul.image_yscale = 0.5;
	}	
}
if(t >= Ojisan.BR4 + 70  && t <= Ojisan.BR4 + 150)
{
	if(t == Ojisan.BR4 + 70){
		circle_create(0, Y_CENTER, "Bullets", random(10), 60, oOjiBr4CircleBullet);
	}
	if(t % 8 == 0) {
		var bul = instance_create_layer(0, Y_CENTER, "Bullets", oOjiBr4Bullet);
		bul.direction = random_range(-55,55);
		bul.speed = random_range(5,8);
		bul.image_xscale = 0.5;
		bul.image_yscale = 0.5;
	}	
}
if(t >= Ojisan.BR4 + 530  && t <= Ojisan.BR4 + 661){
	camera_set_view_pos(view_get_camera(0), X_CAM, Y_CAM);
	camera_set_view_size(view_get_camera(0), room_width - X_CAM*2, room_height - Y_CAM*2);
	X_CAM += 1250/900;
	Y_CAM += 950/900;
}
if(t == Ojisan.BR4 + 1060) {
	instance_create_layer(0, 0, "Bullets", oOjiBr4Flash);	
	scrBR4_clearScreen();
}
#endregion

