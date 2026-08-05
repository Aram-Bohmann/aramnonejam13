// Carrega a fonte com 24 pixels de tamanho e define os caracteres de 32 a 128
global.baloo2 = font_add("Baloo2-SemiBold.ttf", 28, false, false, 32, 128);

draw_set_font(global.baloo2);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

escolha = false;
global.campeao = noone;