function check_shader(argument0)
{
	if( !shader_is_compiled( argument0 ) ) 
	{
	    show_message( "DirectX 9.0c needs to be installed to play this game." );
		game_end();
	}
}
