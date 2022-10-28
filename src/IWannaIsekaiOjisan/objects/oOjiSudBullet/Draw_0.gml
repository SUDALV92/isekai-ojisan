check_shader( shdRedHSV );

if( color = -1 )
{
	draw_self();	
}
else
{
	shader_set( shdRedHSV );
	draw_sprite_ext( sprite_index, image_index, floor(x), floor(y), image_xscale, image_yscale, image_angle, color, image_alpha );
	if( fxSprite != -1 )
		draw_sprite_ext( fxSprite, image_index, floor(x), floor(y), fxScale, fxScale, image_angle, fxColor, fxAlpha );
	shader_reset();
}