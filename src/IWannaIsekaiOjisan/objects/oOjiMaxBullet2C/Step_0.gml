image_angle = direction;
if( Mode == 0 )
{
	var px = 50;
	if( x > 1250 + px || x < 0 - px || y > 950 + px || y < 0 - px )
	{
		instance_destroy();	
	}
}
if( oAvoidance.Step == Ojisan.Maxim + 1935 )
{
	instance_scale( id, 0, 60 );
	alarm[0] = 60;
}