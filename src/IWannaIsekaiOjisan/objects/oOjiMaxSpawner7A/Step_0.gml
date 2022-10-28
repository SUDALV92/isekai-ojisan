if( Mode = 1 )
{
	if instance_exists( oAvoidance )
	{
		if( oAvoidance.Step == Ojisan.Maxim + 4195 ) //7895
		{
			var spawnX = x;
			var spawnY = y;
			var spawnLayer = "Bullets";
			var spawnAngle = irandom(360);
			var spawnNum = 80;
			var spawnObj = oOjiMaxBullet7A;

			for( var i = 0; i < spawnNum; i++ ) 
			{
				var SetColor = make_color_rgb( 158, 53, 62 );
				var dir = spawnAngle + i * ( 360 / spawnNum );
				var xx = spawnX + lengthdir_x( 100, dir );
				var yy = spawnY + lengthdir_y( 100, dir );
				var entity = instance_create_layer( xx, yy, spawnLayer, spawnObj );
				entity.direction = dir;
				entity.speed = 7;
				entity.color = SetColor;
				entity.image_alpha = 1;
				instance_scale( entity, 4, 60 );
			}
			instance_destroy();
		}
	}
}