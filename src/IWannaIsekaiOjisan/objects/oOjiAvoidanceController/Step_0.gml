if( !instance_exists( oPlayer ) )
{
	avoidance_finish();
	return;
}

var t = avoidance_get_step();

#region SUDALV
if( t == Ojisan.SUDALV + 0 )
{
	N = 10;
	repeat(N)
	{
		angle = random(360);
		repeat( 20 )
		{
			repeat(2) //FX
			{
				bullet = instance_create_layer( 300 + irandom_range( -100, 100 ), 100 + irandom_range( -100, 100 ), "Bullets", oOjiSudBullet,
				{
					speed : random_range( 0.5, 3 ),
					direction : angle + random_range( -5, 5 ),
					color : purple,
					mode : 0,
					image_alpha : 0.1
				});
				instance_set_scale( bullet, 3 );
				killer_set_active( bullet, false );
				
				bullet2 = instance_create_layer( 950 + irandom_range( -100, 100 ), 100 + irandom_range( -100, 100 ), "Bullets", oOjiSudBullet,
				{
					speed : random_range( 0.5, 3 ),
					direction : angle + random_range( -5, 5 ),
					color : purple,
					mode : 0,
					image_alpha : 0.1
				});
				instance_set_scale( bullet2, 3 );
				killer_set_active( bullet2, false );
			}
			repeat(2)
			{
				bullet = instance_create_layer( 300 + irandom_range( -100, 100 ), 100 + irandom_range( -100, 100 ), "Bullets", oOjiSudBullet,
				{
					speed : random_range( 0.5, 1.5 ),
					direction : angle + random_range( -5, 5 ),
					color : red_medium,
					mode : 0
				});
				instance_set_scale( bullet, 0.5 );
			}
			bullet = instance_create_layer( 300 + irandom_range( -100, 100 ), 100 + irandom_range( -100, 100 ), "Bullets", oOjiSudBullet,
			{
				speed : random_range( 2, 3 ),
				direction : angle + random_range( -5, 5 ),
				color : red_medium,
				mode : 0
			});
			instance_set_scale( bullet, 0.5 );
			repeat(2)
			{
				bullet2 = instance_create_layer( 950 + irandom_range( -100, 100 ), 100 + irandom_range( -100, 100 ), "Bullets", oOjiSudBullet,
				{
					speed : random_range( 0.5, 1.5 ),
					direction : angle + random_range( -5, 5 ),
					color : red_medium,
					mode : 0
				});
				instance_set_scale( bullet2, 0.5 );
			}
			bullet2 = instance_create_layer( 950 + irandom_range( -100, 100 ), 100 + irandom_range( -100, 100 ), "Bullets", oOjiSudBullet,
			{
				speed : random_range( 2, 3 ),
				direction : angle + random_range( -5, 5 ),
				color : red_medium,
				mode : 0
			});
			instance_set_scale( bullet2, 0.5 );
			angle += 360 / 30;
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
	executor = executor_create( 20, scrOjiSudA1Rain, 1000 );
	executor.yellow = yellow;
}
if( t == Ojisan.SUDALV + 1145 )
{
	with( oOjiSudBullet )
	{
		killer_set_active( id, false );
		instance_change_alpha( id, 0, 60 );
		instance_scale( id, 3, 120 );
	}
	executor = executor_create( 2, scrOjiSudA2Curving, 400 );
	executor.red_dark = red_dark;
}
if( t == Ojisan.SUDALV + 1600 )
{
	executor = executor_create( 10, scrOjiSudA3Bullets, 700 );
	executor.white = white;
	
	executor2 = executor_create( 5, scrOjiSudA3FX, 800 );
	executor2.purple = purple;
}
if( t == Ojisan.SUDALV + 2700 )
{
	bullet = instance_create_layer( 1280, 256, "Bullets", oOjiSudBullet,
	{
		sprite_index : sFlower,
		color : yellow,
		mode : 4
	});
	with( bullet )
	{
		path_start( pOjiSudA4, 8, path_action_stop, true );
		rotation = -1;
		spawner = spawner_attach( id, 2, oOjiSudBullet, 1000 );
		spawner.mode = 5;
		spawner.targetColor = other.yellow;
		spawner2 = spawner_attach( id, 90, oOjiSudBullet, 1000 );
		spawner2.mode = 6;
		spawner2.targetColor = other.purple;
	}
}
if( t == Ojisan.SUDALV + 3670 )
{
	with( oOjiSudBullet )
	{
		killer_set_active( id, false );
		instance_change_alpha( id, 0, 30 );
		instance_scale( id, 3, 120 );
	}
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
	for(i = 0; i < 6; i++){
		instance_create_layer(X_CENTER - 150 + 50*i, Y_CENTER, "BehindPlayer", oOjiBr4Block);	
	}
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
	if(instance_exists(oOjiBr4Print)) instance_destroy(oOjiBr4Print);
	if(instance_exists(oOjiBr4Block)) instance_destroy(oOjiBr4Block);
	if(instance_exists(oOjiBr4Print2)) instance_destroy(oOjiBr4Print2);
	if(instance_exists(oOjiBr4CircleBullet)) instance_destroy(oOjiBr4CircleBullet);
	if(instance_exists(oOjiBr4Bullet)) instance_destroy(oOjiBr4Bullet);
}
#endregion

