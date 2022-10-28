Bullet = instance_create_layer( x, y, "Bullets", oOjiMaxBullet1B );
Bullet.direction = direction;
Bullet.color = color;
Bullet.Mode = Mode;
instance_set_scale( Bullet, 0.9 );
instance_destroy();

