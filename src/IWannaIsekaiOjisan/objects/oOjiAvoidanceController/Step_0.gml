if( !avoidance_is_playing() ) 
{
	avoidance_finish();
	return;
}

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
	N = 10;
	repeat(N)
	{
		angle = random(360);
		repeat( 30 )
		{
			bullet = instance_create_layer( 300, 200, "Bullets", oOjiSudBullet,
			{
				speed : 2 + random_range( -2, 2 ),
				direction : angle + random_range( -5, 5 ),
				color : red_light,
				mode : 0
			});
			instance_set_scale( bullet, 0.5 );
			bullet2 = instance_create_layer( 950, 200, "Bullets", oOjiSudBullet,
			{
				speed : 2 + random_range( -2, 2 ),
				direction : angle + random_range( -5, 5 ),
				color : red_light,
				mode : 0
			});
			instance_set_scale( bullet2, 0.5 );
			angle += 360 / 30;
		}
	}
	executor_create( 1, scrOjiSudShake, 60 );
}
if( t == Ojisan.SUDALV + 60 )
{
	camera_set_view_pos( view_get_camera( 0 ), 0, 0 );	
}
if( t == Ojisan.SUDALV + 60 )
{
	executor = executor_create( 10, scrOjiSudA1Rain, 1000 );
	executor.yellow = yellow;
}
if( t == Ojisan.SUDALV + 1145 )
{
	repeat( 60 )
	{
		instance_create_layer( 625, 300, "Bullets", oOjiSudBullet, 
		{
			
		})	
	}
}
#endregion

#region Maxim_new
if( t == Ojisan.Maxim + 0 )
{
	var l = layer_get_id("BehindPlayer");
	instance_deactivate_layer( l );
	var tile = layer_get_id("Tiles_1");
	instance_deactivate_layer( tile );
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
if( t > Ojisan.Maxim + 1150 && t < Ojisan.Maxim + 1380 && t mod 5 == 0 ) // 4850 - 5080 -- Правая сторона барраж 
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
if( t == Ojisan.Maxim + 1380 ) // Пули назад
{
	with( oOjiMaxBullet3A )
	{
		//gravity_direction = 0;
		//gravity = 0.2;
		speed = -speed;
	}
}
if( t > Ojisan.Maxim + 1380 && t < Ojisan.Maxim + 1610 && t mod 5 == 0 ) // 5080 - 5310 -- Леваяя сторона барраж 
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
if( t == Ojisan.Maxim + 1640 ) // 5340 -- Спавн стены + жёлтые
{
	with( oOjiMaxBullet2B )
	{
		to_speed = speed - 0.01;
		instance_change_alpha( id, 1, 120 );
		Mode = 1;
		alarm[0] = 120;
	}
	var x_player = player_get_x();
	list_bullet = ds_list_create();
	var px = 350;
	if( x_player <= X_CENTER )
	{
		var xx = 0 - 25;
		for( i = 0; i < 950 + 32; i += 32 + 4 )
		{
			bullet_wall = instance_create_layer( xx, i, "Bullets", oOjiMaxBullet4A );
			bullet_wall.color = red_medium;
			ds_list_add( list_bullet, bullet_wall );
			instance_set_scale( bullet_wall, 0.5 );
			instance_move_to_x( bullet_wall, 1250 - px, 294 ) // -> 5635
		}
		ds_list_shuffle( list_bullet );
	}
	if( x_player > X_CENTER )
	{
		var xx = 1250 + 25;
		for( i = 0; i < 950 + 32; i += 32 + 4 )
		{
			bullet_wall = instance_create_layer( xx, i, "Bullets", oOjiMaxBullet4A );
			bullet_wall.color = red_medium;
			ds_list_add( list_bullet, bullet_wall );
			instance_set_scale( bullet_wall, 0.5 );
			instance_move_to_x( bullet_wall, 0 + px, 294 ) // -> 5635
		}
		ds_list_shuffle( list_bullet );
	}
}
if( t >= Ojisan.Maxim + 1935 && t <= Ojisan.Maxim + 2100 && t mod 3 == 0 ) // 5635 - 5800 -- Пуля-стена улетает
{
	with( list_bullet[| Number] )
	{
		if( x < 625 )
		{
			instance_move_to_x( id, 1250, 30, tween_linear );
			alarm[0] = 30;
		}
		if( x > 625 )
		{
			instance_move_to_x( id, 0, 30, tween_linear );
			alarm[0] = 30;
		}
	}
	Number++;
}
if( t == Ojisan.Maxim + 2100 ) // 5800 -- Спавнеры
{
	spawner = instance_create_layer( 625, 950, "BehindPlayer", oOjiMaxSpawner5A );
	spawner.direction = 0;
	spawner.color = #9600ff;
	instance_set_scale( spawner, 0.25 );
	
	spawner = instance_create_layer( 625, 950, "BehindPlayer", oOjiMaxSpawner5A );
	spawner.direction = 90;
	spawner.color = yellow;
	instance_set_scale( spawner, 0.25 );
	
	spawner = instance_create_layer( 625, 950, "BehindPlayer", oOjiMaxSpawner5A );
	spawner.direction = 180;
	spawner.color = #9600ff;
	instance_set_scale( spawner, 0.25 );
	
	spawner = instance_create_layer( 625, 950, "BehindPlayer", oOjiMaxSpawner5A );
	spawner.direction = 270;
	spawner.color = yellow;
	instance_set_scale( spawner, 0.25 );
}
if( t > Ojisan.Maxim + 3245 - 120 && t < Ojisan.Maxim + 3980 && t mod 60 == 0  ) // 6945 - 7680 -- Бабочки
{
	var xx = irandom_range( 0, 1250 );
	var to_xx = irandom_range( 0, 1250 );
	var yy = 950 + 25;
	var spd = 0;
	for( i = 0; i < 8; i++ )
	{
		bullet = instance_create_layer( xx, yy, "Bullets", oOjiMaxBullet6A );
		bullet.direction = point_direction( xx, yy, to_xx, 0 );
		bullet.speed = 1 + spd;
		bullet.color = red_dark;
		bullet.alarm[0] = 60;
		instance_set_scale( bullet, 1.25 );
		spd += 1;
	}
}
if( t == Ojisan.Maxim + 3345 ) //7045
{
	var xx = 625 + irandom_range( -200, 200 );
	var yy = 475;
	Safe = instance_create_layer( xx, yy, "BehindPlayer", oOjiMaxSpawner7A );
	Safe.image_alpha = 0.1;
	Safe.color = #ffffff;
	Safe.image_xscale = 0.1;
	Safe.image_yscale = 0.1;
	instance_change_alpha( Safe, 1, 115 );
	instance_scale( Safe, 3, 115 );
	Safe.alarm[0] = 120;
}
#endregion

#region BR4
if(t == Ojisan.BR4){
	scrBR4_playerTeleport(X_CENTER, 455);
	for(i = 0; i < 6; i++){
		instance_create_layer(X_CENTER - 150 + 50*i, Y_CENTER, "BehindPlayer", oOjiBr4Block);	
	}
	instance_create_layer(0, 0, "Bullets", oOjiBr4Flash);	
	for(i = 0; i < 3; i++){
		var print = instance_create_layer(X_CENTER, Y_CENTER, "BehindPlayer", oOjiBr4Print2);
		print.mode = i;
	}
	instance_create_layer(X_CENTER, Y_CENTER, "BehindPlayer", oOjiBr4Print);
	
}
if(t >= Ojisan.BR4 + 0  && t <= Ojisan.BR4 + 80)
{
	if(t == Ojisan.BR4){
		circle_create(1250, Y_CENTER, "Bullets", random(10), 60, oOjiBr4CircleBullet);
	}
	if(t % 8 == 0) {
		var bul = instance_create_layer(1250, Y_CENTER, "Bullets", oOjiBr4Bullet);
		bul.direction = random_range(125,245);
		bul.speed = random_range(5,8);
		bul.image_xscale = 0.5;
		bul.image_yscale = 0.5;
	}	
}
if(t >= Ojisan.BR4 + 70  && t <= Ojisan.BR4 + 150)
{
	if(t == Ojisan.BR4 + 70){
		circle_create(0, Y_CENTER, "Bullets", random(10), 60, oOjiBr4CircleBullet);
	}
	if(t % 8 == 0) {
		var bul = instance_create_layer(0, Y_CENTER, "Bullets", oOjiBr4Bullet);
		bul.direction = random_range(-55,55);
		bul.speed = random_range(5,8);
		bul.image_xscale = 0.5;
		bul.image_yscale = 0.5;
	}	
}
if(t >= Ojisan.BR4 + 530  && t <= Ojisan.BR4 + 661){
	camera_set_view_pos(view_get_camera(0), X_CAM, Y_CAM);
	camera_set_view_size(view_get_camera(0), room_width - X_CAM*2, room_height - Y_CAM*2);
	X_CAM += 1250/900;
	Y_CAM += 950/900;
}
if(t == Ojisan.BR4 + 1060) {
	instance_create_layer(0, 0, "Bullets", oOjiBr4Flash);
	if(instance_exists(oOjiBr4Print)) instance_destroy(oOjiBr4Print);
	if(instance_exists(oOjiBr4Block)) instance_destroy(oOjiBr4Block);
	if(instance_exists(oOjiBr4Print2)) instance_destroy(oOjiBr4Print2);
	if(instance_exists(oOjiBr4CircleBullet)) instance_destroy(oOjiBr4CircleBullet);
	if(instance_exists(oOjiBr4Bullet)) instance_destroy(oOjiBr4Bullet);
}
#endregion

