if( Mode == 0 )
{
	#region Врап
	var px = 30;
	if( x > 1250 + px )
	{
		x -= 1250 + px;	
	}
	if( x < 0 - px )
	{
		x += 1250 + px;	
	}
	if( y > 950 + px )
	{
		y -= 950 + px;	
	}
	if( y < 0 - px )
	{
		y += 950 + px;	
	}
	#endregion
	if( speed > 3 )
	{
		speed -= 6/120;		
	}
	if( speed < 3 )
	{
		speed = 3;	
	}
	image_angle = direction;
}
if( Mode == 1 )
{
	var px = 100;
	if( x > 1250 + px || x < 0 - px || y > 950 + px || y < 0 - px )
	{
		instance_destroy();	
	}
	image_angle = direction;
}
if( Mode == 2 )
{
	var px = 100;
	if( x > 1250 + px || x < 0 - px || y > 950 + px || y < 0 - px )
	{
		instance_destroy();	
	}
	image_angle += 0.5;
}