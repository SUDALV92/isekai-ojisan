if( Time == 4850 ) // 4850
{
	var spawnX = x + irandom_range( -50, 50 );
	var spawnY = y + irandom_range( -50, 50 );;
	var spawnLayer = "Bullets"
	var spawnAngle = 0;
	var spawnNum = 40;
	var spawnObj = oOjiMaxBullet2B;

	for( var i = 0; i < spawnNum; i++ ) 
	{
		var scale = 0.5
		var dir = irandom_range( -20, 20 );
		var entity = instance_create_layer( spawnX, spawnY, spawnLayer, spawnObj );
		entity.direction = spawnAngle + i * ( 360 / spawnNum ) + dir;
		entity.speed = random_range( 5, 8 );
		entity.color = color;
		instance_set_scale( entity, scale );
	}		
	instance_destroy();
}
Time++;