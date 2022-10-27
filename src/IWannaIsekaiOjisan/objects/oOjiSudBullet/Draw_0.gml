check_shader( shdRedHSV );

if( color = -1 )
{
	draw_self();	
}
else
{
	shader_set( shdRedHSV );
	draw_sprite_ext( sprite_index, image_index, floor(x), floor(y), image_xscale, image_yscale, image_angle, color, image_alpha );
	shader_reset();
}