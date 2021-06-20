if( !surface_exists( _screen ) )
{
    _screen = surface_create( camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
	view_set_surface_id(0,_screen)
}

if( view_current != 1 ) exit;

var fx8bitChillout = fx8bitChilloutGrayscale;
if( _modeColor )
    fx8bitChillout = fx8bitChilloutColor;

var uRoundnessScale = shader_get_uniform( fx8bitChillout, "uRoundnessScale" );
var uSize = shader_get_uniform( fx8bitChillout, "uSize" );
var uToonLevels = shader_get_uniform( fx8bitChillout, "uToonLevels" );

shader_set( fx8bitChillout );
shader_set_uniform_f( uRoundnessScale, _roundnessScale, _roundnessExtraScale, _roundnessScale * _roundnessExtraScale );
shader_set_uniform_f( uSize,
    _pixelScale / surface_get_width( _screen ),
    _pixelScale / surface_get_height( _screen ),
    surface_get_width( _screen ) / _pixelScale,
    surface_get_height( _screen ) / _pixelScale
);
shader_set_uniform_f( uToonLevels, _toonLevels, 1.0 / _toonLevels );

draw_surface( _screen, 0, 0 );
shader_reset();


// draw information.
draw_set_colour(c_yellow);
//draw_text(10, 10, string_hash_to_newline("PRESS <SPACE> TO CHANGE COLOR/GRAYSCALE MODE"));
draw_set_colour(c_black);

