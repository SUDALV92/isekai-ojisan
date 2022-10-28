outsideDelete = 100;
t = 0;
curving = 0;
maxSpeed = -1;
rotation = 0;

if( variable_instance_exists( id, "Spawner" ) )
{
	mode = Spawner.mode;
	color = Spawner.targetColor;
}

switch( mode )
{
	case 5:
		direction = random( 360 );
		sprite_index = sSphere_2;
		speed = random_range( 1, 4 );
		break;
	case 6:
		sprite_index = sLongBullet;
		direction = player_direction( x, y );
		speed = 7;
		break;
}