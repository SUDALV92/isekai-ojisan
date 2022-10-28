if( !avoidance_is_playing() ) return;

var t = avoidance_get_step();

if( global.Debug = true )
{
	if( keyboard_check_pressed( vk_numpad4 ) )
	{
		var l = layer_get_id("BehindPlayer");
		instance_activate_layer( l );
		oAvoidance.Step = Ojisan.SUDALV;
		if instance_exists( oOjiMaxDarkness )
		{
			instance_destroy(oOjiMaxDarkness);	
		}
	}
	if( keyboard_check_pressed( vk_numpad5 ) )
	{
		var l = layer_get_id("BehindPlayer");
		instance_activate_layer( l );
		oAvoidance.Step = Ojisan.Maxim - 1;	
		if instance_exists( oOjiMaxDarkness )
		{
			instance_destroy(oOjiMaxDarkness);	
		}
	}
	if( keyboard_check_pressed( vk_numpad6 ) )
	{
		var l = layer_get_id("BehindPlayer");
		instance_activate_layer( l );
		oAvoidance.Step = Ojisan.BR4 - 1;
		if instance_exists( oOjiMaxDarkness )
		{
			instance_destroy(oOjiMaxDarkness);	
		}
	}
}
#region SUDALV
if( t == Ojisan.SUDALV + 0 )
{
	
}
#endregion

#region Maxim_new
if( t == Ojisan.Maxim + 0 )
{
	var l = layer_get_id("BehindPlayer");
	instance_deactivate_layer( l );
	if instance_exists( oOjiMaxDarkness )
	{
		instance_destroy(oOjiMaxDarkness);	
	}
	room_set_infinite_jump( true );
	scrOjiMaxKidTeleport();
	instance_create_layer( 0, 0, "Darkness", oOjiMaxDarkness );
	//spawner_create( 0, 0, "Bullets", 120, oOjiMaxSpawner1A, 985);
}
if( t >= Ojisan.Maxim && t <= Ojisan.Maxim + 865 && t mod 120 == 0 ) // Спавн колец
{
	instance_create_layer( 0, 0, "Bullets",oOjiMaxSpawner1A );	
}
if( t == Ojisan.Maxim + 985 ) // 4685 -- Смена мода. Первый шар
{
	with( oOjiMaxBullet1B )
	{
		if( Mode == 0 )
		{
			Mode = 2;
			speed = 1;
			gravity = 0.085;
		}
	}
	var scale = 0.01;
	bullet = instance_create_layer( 250, 100, "Bullets", oOjiMaxBullet2A );
	bullet.color = #f0ff00;
	instance_set_scale( bullet, scale );
	instance_scale( bullet, 1.25, 20 );
}
if( t == Ojisan.Maxim + 1020 ) // 4720 -- Второй шар
{
	var scale = 0.01;
	bullet = instance_create_layer( 250 + 250, 100, "Bullets", oOjiMaxBullet2A );
	bullet.color = #f0ff00;
	instance_set_scale( bullet, scale );
	instance_scale( bullet, 1.25, 20 );
}
if( t == Ojisan.Maxim + 1055 ) // 4755 -- Третий шар
{
	var scale = 0.01;
	bullet = instance_create_layer( 250 + 500, 100, "Bullets", oOjiMaxBullet2A );
	bullet.color = #f0ff00;
	instance_set_scale( bullet, scale );
	instance_scale( bullet, 1.25, 20 );
}
if( t == Ojisan.Maxim + 1090 ) // 4790 -- Четвертый шар
{
	var scale = 0.01;
	bullet = instance_create_layer( 250 + 750, 100, "Bullets", oOjiMaxBullet2A );
	bullet.color = #f0ff00;
	instance_set_scale( bullet, scale );
	instance_scale( bullet, 1.25, 20 );
}
if( t == Ojisan.Maxim + 1150 ) // 4850 -- Вспышка
{
	instance_destroy(oOjiMaxDarkness);
	White = instance_create_layer( 0, 0, "Darkness", oOjiMaxWhite );
	White.image_xscale = 25;
	White.image_yscale = 19;
	White.image_alpha = 1;
	instance_change_alpha( White, 0, 30 );
}
if( t > Ojisan.Maxim + 1150 && t < Ojisan.Maxim + 1380 && t mod 8 == 0 ) // 4850 - 5080 -- Правая сторона барраж 
{
	var xx = 1250 + 50;
	var yy = irandom_range( 50, 900 );
	var SetColor = #9e353e;
	var scale = 0.75;
	bullet = instance_create_layer( xx, yy, "Bullets", oOjiMaxBullet3A );
	bullet.direction = point_direction( xx, yy, 0, yy + irandom_range( -45, 45 ) );
	bullet.speed = random_range( 6, 8 );
	bullet.color = SetColor;
	instance_set_scale( bullet, scale );
}
if( t == Ojisan.Maxim + 1380 )
{
	with( oOjiMaxBullet3A )
	{
		//gravity_direction = 0;
		//gravity = 0.2;
		speed = -speed;
	}
}
if( t > Ojisan.Maxim + 1380 && t < Ojisan.Maxim + 1610 && t mod 8 == 0 ) // 5080 - 5310 -- Правая сторона барраж 
{
	var xx = 0 - 50;
	var yy = irandom_range( 50, 900 );
	var SetColor = #9e353e;
	var scale = 0.75;
	bullet = instance_create_layer( xx, yy, "Bullets", oOjiMaxBullet3A );
	bullet.direction = point_direction( xx, yy, 1250, yy + irandom_range( -45, 45 ) );
	bullet.speed = random_range( 6, 8 );
	bullet.color = SetColor;
	instance_set_scale( bullet, scale );
}
#endregion

#region BR4
if(t == Ojisan.BR4 + 0 )
{
	
}
#endregion

