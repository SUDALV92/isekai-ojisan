var spawnX = x;
var spawnY = y;
var spawnLayer = "Bullets";
//var spawnAngle = player_direction( x, y ) + irandom_range( -45, 45 );
var spawnAngle = irandom( 360 );
var spawnNum = 4;
var spawnObj = oOjiMaxBullet6B;
var spd = random_range( 3, 5.5 );
for( var i = 0; i < spawnNum; i++ ) 
{
	var SetColor = color;
	var entity = instance_create_layer( spawnX, spawnY, spawnLayer, spawnObj );
	entity.direction = spawnAngle + i * ( 360 / spawnNum );
	entity.StartDirection = entity.direction;
	entity.speed = spd;
	entity.color = SetColor;
	instance_set_scale( entity, 0.5 );
}
instance_destroy();

