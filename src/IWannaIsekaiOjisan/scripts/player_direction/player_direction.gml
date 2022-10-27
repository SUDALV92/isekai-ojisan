function player_direction( xx, yy )
{
	if( instance_exists( oPlayer ) )
	{
		return point_direction( xx, yy, oPlayer.x, oPlayer.y );
	}
	else
		return random( 360 );
}