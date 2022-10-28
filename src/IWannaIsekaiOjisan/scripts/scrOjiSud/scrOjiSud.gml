function scrOjiSudShake()
{
	camera_set_view_pos( view_get_camera( 0 ), irandom_range( -5, 5 ), irandom_range( -5, 5 ) );
}

function scrOjiSudA1Rain()
{
	instance_create_layer( irandom_range( 55, 435 ), -10, "Bullets", oOjiSudBullet, 
	{
		vspeed : 4,
		image_angle : 90,
		image_xscale : 0.3,
		image_yscale : 0.5,
		mode : 1,
		color : yellow
	});
	instance_create_layer( irandom_range( 435, 815 ), -10, "Bullets", oOjiSudBullet, 
	{
		vspeed : 4,
		image_angle : 90,
		image_xscale : 0.3,
		image_yscale : 0.5,
		mode : 1,
		color : yellow
	});
	instance_create_layer( irandom_range( 815, 1195 ), -10, "Bullets", oOjiSudBullet, 
	{
		vspeed : 4,
		image_angle : 90,
		image_xscale : 0.3,
		image_yscale : 0.5,
		mode : 1,
		color : yellow
	});
}

function scrOjiSudA2Curving()
{
	repeat( 2 )
	{
		bullet = instance_create_layer( 625 + irandom_range( -150, 150 ), 300 + irandom_range( -150, 150 ), "Bullets", oOjiSudBullet, 
		{
			speed : 3,
			direction : random( 360 ),
			color : red_dark,
			mode : 2
		});
		instance_set_scale( bullet, 0 );
		instance_scale( bullet, 1, 30 );
		bullet.curving = choose( -0.05, 0.05 );
	}	
}