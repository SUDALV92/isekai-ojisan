if( Mode == 0 )
{
	image_angle = direction;
	var px = 100;
	if( x > 1250 + px || x < 0 - px || y > 950 + px || y < 0 - px )
	{
		instance_destroy();	
	}
	if( oAvoidance.Step == Ojisan.Maxim + 3160 ) //6860
	{
		instance_change_alpha( id, 0, 120 )
		alarm[0] = 120;
		killer_set_active( id, false );
	}
}