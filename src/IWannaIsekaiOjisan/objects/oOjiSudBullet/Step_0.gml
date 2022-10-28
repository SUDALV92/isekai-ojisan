direction += curving;

switch( mode )
{
	case 1:
		image_xscale += 0.01;
		break;
	case 2:
		if( abs(curving) < 0.4 )
			curving *= 1.01;
		break;
}
if( outsideDelete != -1 && t >= outsideDelete )
{
	instance_inbounds_check( id );	
}
t++;