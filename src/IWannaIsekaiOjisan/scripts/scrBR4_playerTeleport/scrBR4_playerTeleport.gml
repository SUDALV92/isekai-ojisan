// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrBR4_playerTeleport(target_x, target_y) {
	if( instance_exists( oPlayer ) ){
		oPlayer.x = target_x;
		oPlayer.y = target_y;
	}
}