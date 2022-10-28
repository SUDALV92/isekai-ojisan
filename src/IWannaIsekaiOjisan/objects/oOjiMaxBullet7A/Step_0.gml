if( Mode == 0 )
{
	var px = 100;
	if( x > 1250 + px || x < 0 - px || y > 950 + px || y < 0 - px )
	{
		instance_destroy();	
	}
	image_angle = direction;
}