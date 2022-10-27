function scrOjiSudShake()
{
	camera_set_view_pos( view_get_camera( 0 ), irandom_range( -2, 2 ), irandom_range( -2, 2 ) );
}

function scrOjiSudA1Rain()
{
	instance_create_layer( irandom_range( 55, 435 ), -10, "Bullets", oOjiSudBullet, 
	{
		vspeed : 4,
		image_angle : 90,
		image_yscale : 0.3,
		mode : 1,
		color : yellow
	});
	instance_create_layer( irandom_range( 435, 815 ), -10, "Bullets", oOjiSudBullet, 
	{
		vspeed : 4,
		image_angle : 90,
		image_yscale : 0.3,
		mode : 1,
		color : yellow
	});
	instance_create_layer( irandom_range( 815, 1195 ), -10, "Bullets", oOjiSudBullet, 
	{
		vspeed : 4,
		image_angle : 90,
		image_yscale : 0.3,
		mode : 1,
		color : yellow
	});
}