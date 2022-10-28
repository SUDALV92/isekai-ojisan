if( Mode == 0 )
{
	var px = 25;
	if( x > 1250 + px || x < 0 - px || y > 950 + px || y < 0 - px )
	{
		instance_destroy();	
	}
	/*
	if( oAvoidance.Step == Ojisan.Maxim + 2100 )
	{
		killer_set_active( id, false );
		image_alpha = 0.1;
	}
	*/
}