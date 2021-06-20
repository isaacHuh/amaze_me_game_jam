/// @description Insert description here
// You can write your code in this editor
//outline shader definitions
uThickness        = shader_get_uniform(OutlineShader,"u_thick");
uColor            = shader_get_uniform(OutlineShader,"u_color");
samplerSurface    = shader_get_sampler_index(OutlineShader, "playerTexture");

thickness = 0.003;

global.surfPlayer = -1;
rotate = 0;


green = make_color_rgb(167,224,67)
red = make_color_rgb(224, 67, 67)
blue = make_color_rgb(67, 83, 224)
pink = make_color_rgb(224, 67, 172)

color = pink;

count = 0;
shoot_count = 0;
image_xscale = 6;
image_yscale = 6;
image_speed = 0;
shake = 0;
attack_len = 0;

draw_fingers = [0,0,0,0,0]
draw_fingers_scale = [image_yscale,image_yscale,image_yscale,image_yscale,image_yscale]
