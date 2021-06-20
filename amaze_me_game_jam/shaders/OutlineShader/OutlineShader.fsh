varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D    playerTexture;
uniform float        u_thickness;
uniform float        u_thick;
uniform vec3         u_color;


void main()
{
    //sample the original
    vec4 original = texture2D( playerTexture, v_vTexcoord );
    
    
    //make the left mask
    vec4 leftSide = texture2D( playerTexture, v_vTexcoord + vec2(u_thick,0.0) );
    vec4 maskLeft = leftSide - original;
    
    //make the bottom mask
    vec4 bottomSide = texture2D( playerTexture, v_vTexcoord + vec2(0.0,-u_thick*2.0) );
    vec4 maskBottom = bottomSide - original;

    //make the right mask
    vec4 rightSide = texture2D( playerTexture, v_vTexcoord + vec2(-u_thick,0.0) );
    vec4 maskRight = rightSide - original;

    //make the top mask
    vec4 topSide = texture2D( playerTexture, v_vTexcoord + vec2(0.0,u_thick*2.0) );
    vec4 maskTop = topSide - original;
    
    //make the top left mask
    vec4 topleftSide = texture2D( playerTexture, v_vTexcoord + vec2(u_thick,u_thick) );
    vec4 maskTopLeft = topleftSide - original;

    //make the top right mask
    vec4 toprightSide = texture2D( playerTexture, v_vTexcoord + vec2(-u_thick,u_thick) );
    vec4 maskTopRight = toprightSide - original;

    //make the bottom left mask
    vec4 bottomleftSide = texture2D( playerTexture, v_vTexcoord + vec2(u_thick,-u_thick) );
    vec4 maskBottomLeft = bottomleftSide - original;

    //make the bottom right mask
    vec4 bottomrightSide = texture2D( playerTexture, v_vTexcoord + vec2(-u_thick,-u_thick) );
    vec4 maskBottomRight = bottomrightSide - original;


    //
    //create a mask with all the combined masks
    //
    vec4 masterMask = maskLeft + maskBottom + maskRight + maskTop +
                        maskTopLeft + maskTopRight + maskBottomLeft + maskBottomRight;
    
    //make the mask white and clamp the alpha
    masterMask.a = clamp(masterMask.a,0.0,1.0);
    if(masterMask.a == 1.0){
		masterMask.rgb = u_color;
	}
    //combine all the masks to original texture
    vec4 combined = masterMask + original;

    //final output
    gl_FragColor = v_vColour * combined;
	//gl_FragColor.rgb=vec3(1,0,0);
}