var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
mouse_click = mouse_check_button_pressed(mb_left);
if (_mouse_sobre) {
	image_xscale =1.1;
	image_yscale =1.1;
	if (mouse_click) {
		global.carta_atual = carta.img_arte;
		if (global.carta_atual = 0){
			global.momento = "inimigo";
		}
		if (global.carta_atual = 1){
			global.momento = "inimigo";
		}
		if (global.carta_atual = 2){
			global.momento = "inimigo";
		}
		if (global.carta_atual = 3){
			global.momento = "inimigo";
		}
		if (global.carta_atual = 4){
			global.momento = "inimigo";
		}
		if (global.carta_atual = 5){
			global.momento = "inimigo";
		}
		if (global.carta_atual = 6){
			global.momento = "inimigo";
		}
		if (global.carta_atual = 7){
			global.momento = "inimigo";
		}
		if (global.carta_atual = 8){
			global.momento = "inimigo";		
	    }
		instance_create_layer(1, 1, "Instances", obj_comece);
		global.morram = true;
	}
	
} else {
	image_xscale =1;
	image_yscale =1;
}

if (global.morram = true) {
	instance_destroy()
}