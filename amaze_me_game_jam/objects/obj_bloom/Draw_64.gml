/// @description Insert description here
// You can write your code in this editor
shader_set(BloomShader);

shader_set_uniform_f(handler, value);
draw_surface(application_surface,0,0);

shader_reset();

//draw_text_color(200,200,value,c_white,c_white,c_white,c_white,1);