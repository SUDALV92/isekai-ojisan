// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrBR4_clearScreen(){
	if(instance_exists(oOjiBr4Print)) instance_destroy(oOjiBr4Print);
	if(instance_exists(oOjiBr4Block)) instance_destroy(oOjiBr4Block);
	if(instance_exists(oOjiBr4Print2)) instance_destroy(oOjiBr4Print2);
	if(instance_exists(oOjiBr4CircleBullet)) instance_destroy(oOjiBr4CircleBullet);
	if(instance_exists(oOjiBr4Bullet)) instance_destroy(oOjiBr4Bullet);
}