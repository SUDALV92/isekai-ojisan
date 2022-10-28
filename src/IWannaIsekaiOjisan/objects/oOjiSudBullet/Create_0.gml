outsideDelete = 100;
t = 0;
curving = 0;
maxSpeed = -1;
rotation = 0;
fxSprite = -1;
fxColor = -1;
fxScale = 1;
fxAlpha = 1;

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
		fx = instance_create_layer( x, y, "Bullets", oOjiSudBullet,
		{
			mode : 0,
			color : make_color_rgb( 158, 53, 62 ),
			sprite_index : sThSphere,
			image_alpha : 0.1,
			direction : direction,
			speed : speed
		});
		killer_set_active( fx, false );
		break;
	case 6:
		sprite_index = sLongBullet;
		direction = player_direction( x, y );
		speed = 7;
		break;
}