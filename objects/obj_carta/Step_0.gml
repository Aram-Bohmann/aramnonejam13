// Checando se o mouse esta porcima da carta
var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
mouse_click = mouse_check_button_pressed(mb_left);
if (_mouse_sobre) {
	image_alpha = 1;	
	// Checando se o mouse clicou em mim
	if (mouse_click) {
		global.carta_atual = carta.img_arte;
		if (global.carta_atual = 0) global.dano += 2;
		global.morram = true;
	}
	
} else {
	image_alpha = 0.7;
}

if (global.morram = true) {
	instance_destroy()
}

// Mudando a escala
image_xscale = xscale;
image_yscale = yscale;