uniform vec3 uRoundnessScale;
uniform vec4 uSize;
uniform vec2 uToonLevels;
varying vec2 texCoord;

void main()
{
    vec2 dir = texCoord - vec2( 0.5 );
    float vinette = mix( 1.0, 0.5, length( dir * vec2( 2.0 ) ) );
    vec2 m = ( vec2( 1.0 ) - ( vec2( 0.5 ) * uRoundnessScale.xx * sin( radians( texCoord.yx * vec2( 180.0 ) ) ) ) ) * ( vec2( 1.0 ) + uRoundnessScale.zz );
    vec2 crd = vec2( 0.5 ) + ( m * dir );
    vec2 fmn = step( vec2( 0.0 ), crd );
    vec2 fmx = step( crd, vec2( 1.0 ) );
    float f = fmn.x * fmn.y * fmx.x * fmx.y * vinette;
    vec2 coord = floor( crd * uSize.zw );
    float scanline = mix( 0.8, 1.0, step( 0.5, fract( coord.y * 0.5 ) ) );
    coord *= uSize.xy;
    vec4 col = texture2D( gm_BaseTexture, coord );
    vec3 col2 = floor( col.xyz * uToonLevels.xxx ) * uToonLevels.yyy;
    gl_FragColor = vec4( col2 * vec3( f ) * vec3( scanline ), 1.0 );
}

