if( Mode == 0 )
{
	image_angle += 2;
	x = x_start + lengthdir_x( xr, direction )
	y = y_start + lengthdir_y( yr, direction )
	direction++;
	if instance_exists( oAvoidance )
	{
		if( oAvoidance.Step > Ojisan.Maxim + 2100 && oAvoidance.Step < Ojisan.Maxim + 3160 && oAvoidance.Step mod 5 == 0 )
		{
			var dir = point_direction( x, y, 625, 475 );
			bullet = instance_create_layer( x, y, "Bullets", oOjiMaxBullet5A );
			bullet.color = color;
			bullet.direction = dir + irandom_range( -25, 25 );
			bullet.speed = 6;
			instance_set_scale( bullet, 0.5 );
		}
		if( oAvoidance.Step == Ojisan.Maxim + 3160 ) //6860
		{
			instance_change_alpha( id, 0, 120 )
			alarm[0] = 120;
			killer_set_active( id, false );
		}
	}	
}
