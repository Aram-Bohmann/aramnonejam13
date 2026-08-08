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
		if (global.carta_atual = 9){
			global.momento = "inimigo";		
	    }
		
		
		if (global.carta_atual = 10){
			global.momento = "ataque_inimigo";	
			global.inimigo_agora = "inimigo_larva";		
	    }
		if (global.carta_atual = 11){
			global.momento = "ataque_inimigo";	
			global.inimigo_agora = "inimigo_esqueleto_guerreiro";		
	    }
		if (global.carta_atual = 12){
			global.momento = "ataque_inimigo";	
			global.inimigo_agora = "inimigo_esqueleto_arqueiro";		
	    }
		if (global.carta_atual = 13){
			global.momento = "ataque_inimigo";	
			global.inimigo_agora = "inimigo_aranha";		
	    }
		if (global.carta_atual = 14){
			global.momento = "ataque_inimigo";	
			global.inimigo_agora = "inimigo_lobisomem";		
	    }
		if (global.carta_atual = 15){
			global.momento = "ataque_inimigo";	
			global.inimigo_agora = "inimigo_globin";		
	    }
		if (global.carta_atual = 16){
			global.momento = "ataque_inimigo";	
			global.inimigo_agora = "inimigo_ciclope";		
	    }
		if (global.carta_atual = 17){
			global.momento = "ataque_inimigo";	
			global.inimigo_agora = "inimigo_fantasma_cozinheiro";		
	    }
		if (global.carta_atual = 18){
			global.momento = "ataque_inimigo";	
			global.inimigo_agora = "inimigo_vampiro";		
	    }
		if (global.carta_atual = 19){
			global.momento = "ataque_inimigo";	
			global.inimigo_agora = "inimigo_mimico_fraco";		
	    }
		if (global.carta_atual = 20){
			global.momento = "ataque_inimigo";	
			global.inimigo_agora = "inimigo_mimico_forte";		
	    }
		if (global.carta_atual = 21){
			global.momento = "ataque_inimigo";	
			global.inimigo_agora = "inimigo_cogumelo_gigante";		
	    }
		if (global.carta_atual = 22){
			global.momento = "ataque_inimigo";	
			global.inimigo_agora = "inimigo_rei";		
	    }
		with (obj_carta) {
            instance_destroy();
        }
		
		call_later(.5, time_source_units_seconds, function() {scr_pega_carta();});
	}
	
} else {
	image_xscale =1;
	image_yscale =1;
}