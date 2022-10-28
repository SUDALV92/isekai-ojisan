bullet = instance_create_layer( x, y, "Bullets", oOjiMaxBullet2C );
bullet.direction = direction;
bullet.speed = 0.2;
bullet.color = color;
instance_set_scale( bullet, 0.5 );
instance_destroy();
