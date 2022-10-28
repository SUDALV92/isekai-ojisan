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
				var SetColor = #ffffff;
				var dir = spawnAngle + i * ( 360 / spawnNum );
				var xx = spawnX + lengthdir_x( 200, dir );
				var yy = spawnY + lengthdir_y( 200, dir );
				var entity = instance_create_layer( xx, yy, spawnLayer, spawnObj );
				entity.direction = dir;
				entity.speed = 12;
				entity.color = SetColor;
				entity.image_alpha = 1;
				entity.image_xscale = 0.5;
				entity.image_yscale = 0.5;
				instance_scale( entity, 6, 90 );
			}
			instance_destroy();
		}
	}
}