switch(mode)
{
	case 1:
		image_yscale += 0.01;
		break;
}
if(outsideDelete != -1 && t >= outsideDelete)
{
	instance_inbounds_check( id );	
}
t++;