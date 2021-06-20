/// @description Insert description here
// You can write your code in this editor
//outline shader definitions
uThickness        = shader_get_uniform(OutlineShader,"u_thick");
uColor            = shader_get_uniform(OutlineShader,"u_color");
samplerSurface    = shader_get_sampler_index(OutlineShader, "playerTexture");

thickness = 0.003;

global.surfPlayer = -1;
rotate = 0;

color = pink;

count = 0;