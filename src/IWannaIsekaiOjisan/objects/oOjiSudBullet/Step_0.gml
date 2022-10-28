direction += curving;
if( rotation != 0 )
{
	image_angle += rotation;	
}
else
{
	image_angle = direction;	
}

switch( mode )
{
	case 1:
		image_xscale += 0.003;
		break;
	case 2:
		if( abs(curving) < 0.4 )
			curving *= 1.01;
		break;
	case 3:
		if( hspeed <= 0 )
		{
			instance_change_alpha( id, 1, 30 );
			maxSpeed = 8;
		}
		else
		{
			t = 0;	
		}
		if( t == 30 )
		{
			killer_set_active( id, true );
		}
		break;
	case 4:
		
		break;
}
if( outsideDelete != -1 && t >= outsideDelete )
{
	instance_inbounds_check( id );	
}
if( maxSpeed != -1 && maxSpeed < speed )
{
	speed = maxSpeed;	
}
t++;