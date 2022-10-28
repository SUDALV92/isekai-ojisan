var spawnX = player_get_x();
var spawnY = player_get_y();
var spawnLayer = "Bullets"
var spawnAngle = irandom(360);
var spawnNum = 12 * 3;
var spawnObj = oOjiMaxBullet1A;

for( var i = 0; i < spawnNum; i++ ) 
{
	var SetColor = #9600ff;
	var SetMode = 1;
	if( i mod 3 == 0 )
	{
		var SetColor = #9E353E;
		var SetMode = 0;
	}
	var entity = instance_create_layer( spawnX, spawnY, spawnLayer, spawnObj );
	entity.direction = spawnAngle + i * ( 360 / spawnNum );
	entity.StartDirection = entity.direction;
	entity.speed = 7;
	entity.friction = 0.1;
	entity.Mode = SetMode;
	entity.color = SetColor;
}
