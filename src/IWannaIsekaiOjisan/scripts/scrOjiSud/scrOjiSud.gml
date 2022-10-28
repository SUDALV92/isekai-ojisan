function scrOjiSudShake()
{
	camera_set_view_pos( view_get_camera( 0 ), irandom_range( -5, 5 ), irandom_range( -5, 5 ) );
}

function scrOjiSudA1Rain()
{
	instance_create_layer( irandom_range( 55, 435 ), -10, "Bullets", oOjiSudBullet, 
	{
		vspeed : random_range( 3.5, 4.5 ),
		direction : 270,
		image_xscale : 0.1,
		image_yscale : 0.5,
		sprite_index : sLongBullet,
		mode : 1,
		color : yellow
	});
	instance_create_layer( irandom_range( 435, 815 ), -10, "Bullets", oOjiSudBullet, 
	{
		vspeed : random_range( 3.5, 4.5 ),
		direction : 270,
		image_xscale : 0.1,
		image_yscale : 0.5,
		sprite_index : sLongBullet,
		mode : 1,
		color : yellow
	});
	instance_create_layer( irandom_range( 815, 1195 ), -10, "Bullets", oOjiSudBullet, 
	{
		vspeed : random_range( 3.5, 4.5 ),
		direction : 270,
		image_xscale : 0.1,
		image_yscale : 0.5,
		sprite_index : sLongBullet,
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

function scrOjiSudA3Bullets()
{
	bullet = instance_create_layer( -50, irandom_range( 0, 320 ), "Bullets", oOjiSudBullet, 
	{
		hspeed : random_range( 10, 12 ),
		gravity_direction : 180 + irandom_range( -5, 5 ),
		gravity : 0.05,
		sprite_index : sSphere,
		color : white,
		mode : 3,
		image_alpha : 0.1
	});
	killer_set_active( bullet, false );
	instance_set_scale( bullet, 0.5 );
	bullet.outsideDelete = 500;
	bullet = instance_create_layer( -50, irandom_range( 320, 640 ), "Bullets", oOjiSudBullet, 
	{
		hspeed : random_range( 10, 12 ),
		gravity_direction : 180 + irandom_range( -5, 5 ),
		gravity : 0.05,
		sprite_index : sSphere,
		color : white,
		mode : 3,
		image_alpha : 0.1
	});
	killer_set_active( bullet, false );
	instance_set_scale( bullet, 0.5 );
	bullet.outsideDelete = 500;
	bullet = instance_create_layer( -50, irandom_range( 640, 910 ), "Bullets", oOjiSudBullet, 
	{
		hspeed : random_range( 10, 12 ),
		gravity_direction : 180 + irandom_range( -5, 5 ),
		gravity : 0.05,
		sprite_index : sSphere,
		color : white,
		mode : 3,
		image_alpha : 0.1
	});
	killer_set_active( bullet, false );
	instance_set_scale( bullet, 0.5 );
	bullet.outsideDelete = 500;
}

function scrOjiSudA3FX()
{
	bullet = instance_create_layer( irandom_range( 50, 1200 ), 1000, "Bullets", oOjiSudBullet, 
	{
		vspeed : -10,
		sprite_index : sThpechat,
		color : purple,
		mode : 0,
		image_alpha : 0.1
	});
	killer_set_active( bullet, false );	
}