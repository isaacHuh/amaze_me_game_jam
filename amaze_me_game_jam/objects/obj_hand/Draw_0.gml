/// @desc surface drawing

//double check if the surface is still accessable
if !surface_exists(global.surfPlayer){
    global.surfPlayer = surface_create(room_width,room_height);
}

//-----surface drawing-----//
surface_set_target(global.surfPlayer);

    draw_clear_alpha(0,0);
    
	//4 fingers
	for(i = 0; i < 4; i++){
		if(draw_fingers[i] == 0){
			draw_fingers_scale[i] = lerp(draw_fingers_scale[i],image_yscale,0.2);
		}else{
			draw_fingers_scale[i] = lerp(draw_fingers_scale[i],0,0.2);
		}
		draw_sprite_ext(sprite_index,i+1,x,y,image_xscale,draw_fingers_scale[i],image_angle,c_white,1);
	}
	
	//thumb
	if(draw_fingers[4] == 0){
			draw_fingers_scale[i] = lerp(draw_fingers_scale[4],image_xscale,0.1);
	}else{
		draw_fingers_scale[i] = lerp(draw_fingers_scale[4],0,0.2);
	}
	draw_sprite_ext(sprite_index,i+1,x,y,draw_fingers_scale[4],image_yscale,image_angle,c_white,1);
	
	// draw hand
    draw_self();
    //draw_sprite_ext(spr_hand,0,x+50,y+50,5,5,rotate,c_white,1);
    
surface_reset_target();

var _surf = surface_get_texture(global.surfPlayer);

//-----set shader-----//
shader_set(OutlineShader);

    //pass shader uniforms
    texture_set_stage(samplerSurface, _surf);
    shader_set_uniform_f(uThickness,thickness);	
	
	r = color_get_red(color)
	g = color_get_green(color)
	b = color_get_blue(color)
	shader_set_uniform_f(uColor, r/255, g/255, b/255);

//draw surface
draw_surface(global.surfPlayer,0,0);

shader_reset();