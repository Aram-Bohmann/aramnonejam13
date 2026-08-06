var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
mouse_click = mouse_check_button_pressed(mb_left);
if (_mouse_sobre) {
	image_xscale = 1.1;
	image_yscale = 1.1;
	if (mouse_click) {
		global.pausado = true
		instance_create_layer(960,540,"fundo_escuro", obj_fundo_escuro)
		instance_create_layer(960.5,540,"Pausado", obj_pausado)
		instance_create_layer(960,576,"Pausado_acima", obj_pausado_continuar)
		instance_create_layer(960,704,"Pausado_acima", obj_pausado_sair)
	}
	
} else {
	image_xscale = 1.0;
	image_yscale = 1.0;
}
