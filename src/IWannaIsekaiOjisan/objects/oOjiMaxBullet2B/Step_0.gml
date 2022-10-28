image_angle = direction;
if( Mode == 0 )
{
	#region Врап
	var px = 20;
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
}
if( Mode == 1 )
{
	var px = 50;
	if( x > 1250 + px || x < 0 - px || y > 950 + px || y < 0 - px )
	{
		instance_destroy();	
	}
}