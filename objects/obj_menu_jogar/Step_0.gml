var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
mouse_click = mouse_check_button_pressed(mb_left);
if (_mouse_sobre) {
	image_xscale = 1.1;
	image_yscale = 1.1;
	if (mouse_click) {
		room_goto(rm_escolha_campeao)
	}
	
} else {
	image_xscale = 1.0;
	image_yscale = 1.0;
}
