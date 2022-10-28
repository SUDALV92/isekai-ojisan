repeat( 2 )
{
	bullet = instance_create_layer( x, y, "Bullets", oOjiMaxBullet4B );
	bullet.direction = player_direction( x, y ) + irandom_range( -90, 90 );
	bullet.speed = random_range( 9, 11 );
	bullet.color = color;
	instance_set_scale( bullet, 0.25 );
}
instance_destroy();
