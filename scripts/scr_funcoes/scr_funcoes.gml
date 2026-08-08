// Deixando o jogo aleatorio
randomize(); 

function desenha_carta(){
	
	draw_sprite_ext(spr_carta_fundo, carta.img_fundo, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

function cria_baralho() {

		// CRIANDO AS CARTAS
		// var _carta = new cria_carta(_nome, _img_arte, _img_fundo)
		var caminho_subir_escada = new cria_carta(0, 0);
		var caminho_corredor = new cria_carta(0, 1);
		var caminho_cozinha = new cria_carta(0, 2);
		var caminho_camara_secreta = new cria_carta(0, 3);
		var caminho_descer_escada = new cria_carta(0, 4);
		var caminho_salao = new cria_carta(0, 5);
		var caminho_lavabo = new cria_carta(0, 6);
		var caminho_despensa = new cria_carta(0, 7);
		var caminho_espinho = new cria_carta(0, 8);
		var caminho_camara_rei = new cria_carta(0, 9);
		
		
		var inimigo_larva = new cria_carta(0, 10);
		var inimigo_esqueleto_guerreiro = new cria_carta(0, 11);
		var inimigo_esqueleto_arqueiro = new cria_carta(0, 12);
		var inimigo_aranha = new cria_carta(0, 13);
		var inimigo_lobisomem = new cria_carta(0, 14);
		var inimigo_globin = new cria_carta(0, 15);
		var inimigo_ciclope = new cria_carta(0, 16);
		var inimigo_fantasma_cozinheiro = new cria_carta(0, 17);
		var inimigo_vampiro = new cria_carta(0, 18);
		var inimigo_mimico_fraco = new cria_carta(0, 19);
		var inimigo_mimico_forte = new cria_carta(0, 20);
		var inimigo_cogumelo_gigante = new cria_carta(0, 21);
		var inimigo_rei = new cria_carta(0, 22);
		
		
		var ataque_cuspe = new cria_carta(0, 23);
		var ataque_carapaca = new cria_carta(0, 24);
		var ataque_espada_enferrujado = new cria_carta(0, 25);
		var ataque_escudo_enferrujado = new cria_carta(0, 26);
		var ataque_arco_enferrujado = new cria_carta(0, 27);
		var ataque_aljava = new cria_carta(0, 28);
		var ataque_cuspe_teia = new cria_carta(0, 29);
		var ataque_mordida_venenosa = new cria_carta(0, 30);	
		var ataque_garras = new cria_carta(0, 31);	
		var ataque_uivo = new cria_carta(0, 32);	
		var ataque_roubar = new cria_carta(0, 33);	
		var ataque_traicao = new cria_carta(0, 34);	
		var ataque_bomba_fumaca = new cria_carta(0, 35);	
		var ataque_porrete = new cria_carta(0, 36);	
		var ataque_pele_grossa = new cria_carta(0, 37);	
		var ataque_espirro = new cria_carta(0, 38);	
		var ataque_panquecas = new cria_carta(0, 39);	
		var ataque_panelada = new cria_carta(0, 40);	
		var ataque_pimenta = new cria_carta(0, 41);	
		var ataque_saciar = new cria_carta(0, 42);	
		var ataque_alimentar = new cria_carta(0, 43);	
		var ataque_transformar = new cria_carta(0, 44);	
		var ataque_susto = new cria_carta(0, 45);
		var ataque_bafo = new cria_carta(0, 46);	
		var ataque_enfurecido = new cria_carta(0, 47);	
		var ataque_alucinar = new cria_carta(0, 48);	
		var ataque_poros = new cria_carta(0, 49);	
		var ataque_espada_sagrada = new cria_carta(0, 50);	
		var ataque_lamento_rei = new cria_carta(0, 51);			
		
		// INSERINDO AS CARTAS AO BARALHO
		if (global.momento = "caminho") {
			array_push(global.baralho, caminho_subir_escada);
			array_push(global.baralho, caminho_corredor);
			array_push(global.baralho, caminho_cozinha);
			array_push(global.baralho, caminho_camara_secreta);
			array_push(global.baralho, caminho_descer_escada);
			array_push(global.baralho, caminho_salao);
			array_push(global.baralho, caminho_lavabo);
			array_push(global.baralho, caminho_despensa);
			array_push(global.baralho, caminho_espinho);
			if (global.fase = 9) {
				array_push(global.baralho, caminho_camara_rei);
			}
		}
		if (global.momento = "inimigo") {
			if (global.inimigo_dificuldade = 0) {
				array_push(global.baralho, inimigo_larva);
				array_push(global.baralho, inimigo_esqueleto_guerreiro);
				array_push(global.baralho, inimigo_esqueleto_arqueiro);
			} else if (global.inimigo_dificuldade = 1) {
				array_push(global.baralho, inimigo_aranha);
				array_push(global.baralho, inimigo_esqueleto_guerreiro);
				array_push(global.baralho, inimigo_esqueleto_arqueiro);
			} else if (global.inimigo_dificuldade = 2) {
				array_push(global.baralho, inimigo_aranha);
				array_push(global.baralho, inimigo_mimico_fraco);
				array_push(global.baralho, inimigo_esqueleto_guerreiro);
				array_push(global.baralho, inimigo_lobisomem);
			} else if (global.inimigo_dificuldade = 3) {
				array_push(global.baralho, inimigo_aranha);
				array_push(global.baralho, inimigo_globin);
				array_push(global.baralho, inimigo_lobisomem);
				array_push(global.baralho, inimigo_mimico_fraco);
			} else if (global.inimigo_dificuldade = 4) {
				array_push(global.baralho, inimigo_globin);
				array_push(global.baralho, inimigo_lobisomem);
				array_push(global.baralho, inimigo_ciclope);
			} else if (global.inimigo_dificuldade = 5) {
				array_push(global.baralho, inimigo_ciclope);
				array_push(global.baralho, inimigo_globin);
				array_push(global.baralho, inimigo_fantasma_cozinheiro);
				array_push(global.baralho, inimigo_mimico_forte);
			} else if (global.inimigo_dificuldade = 6) {
				array_push(global.baralho, inimigo_vampiro);
				array_push(global.baralho, inimigo_fantasma_cozinheiro);
				array_push(global.baralho, inimigo_lobisomem);
				array_push(global.baralho, inimigo_mimico_forte);
			} else if (global.inimigo_dificuldade = 7) {
				array_push(global.baralho, inimigo_cogumelo_gigante);
				array_push(global.baralho, inimigo_fantasma_cozinheiro);
				array_push(global.baralho, inimigo_vampiro);
				array_push(global.baralho, inimigo_mimico_forte);
			} else if (global.inimigo_dificuldade = 8) {
				array_push(global.baralho, inimigo_cogumelo_gigante);
				array_push(global.baralho, inimigo_fantasma_cozinheiro);
				array_push(global.baralho, inimigo_vampiro);
				array_push(global.baralho, inimigo_mimico_forte);
			} else if (global.inimigo_dificuldade = 9) {
				array_push(global.baralho, inimigo_rei);
			}
		}
		if (global.momento = "ataque_inimigo") {
			if (global.inimigo_agora = "inimigo_larva") {
				array_push(global.baralho, ataque_cuspe);
				array_push(global.baralho, ataque_carapaca);
			}
			if (global.inimigo_agora = "inimigo_esqueleto_guerreiro") {
				array_push(global.baralho, ataque_espada_enferrujado);
				array_push(global.baralho, ataque_escudo_enferrujado);
			}
			if (global.inimigo_agora = "inimigo_esqueleto_arqueiro") {
				array_push(global.baralho, ataque_arco_enferrujado);
				array_push(global.baralho, ataque_aljava);
			}
			if (global.inimigo_agora = "inimigo_aranha") {
				array_push(global.baralho, ataque_cuspe_teia);
				array_push(global.baralho, ataque_mordida_venenosa);
			}
			if (global.inimigo_agora = "inimigo_lobisomem") {
				array_push(global.baralho, ataque_garras);
				array_push(global.baralho, ataque_uivo);
			}
			if (global.inimigo_agora = "inimigo_globin") {
				array_push(global.baralho, ataque_roubar);
				array_push(global.baralho, ataque_traicao);
				array_push(global.baralho, ataque_bomba_fumaca);
			}
			if (global.inimigo_agora = "inimigo_ciclope") {
				array_push(global.baralho, ataque_porrete);
				array_push(global.baralho, ataque_pele_grossa);
				array_push(global.baralho, ataque_espirro);
			}
			if (global.inimigo_agora = "inimigo_fantasma_cozinheiro") {
				array_push(global.baralho, ataque_panquecas);
				array_push(global.baralho, ataque_panelada);
				array_push(global.baralho, ataque_pimenta);
			}
			if (global.inimigo_agora = "inimigo_vampiro") {
				array_push(global.baralho, ataque_saciar);
				array_push(global.baralho, ataque_alimentar);
				array_push(global.baralho, ataque_transformar);
			}
			if (global.inimigo_agora = "inimigo_mimico_fraco") {
				array_push(global.baralho, ataque_susto);
				array_push(global.baralho, ataque_bafo);
				array_push(global.baralho, ataque_enfurecido);
			}
			if (global.inimigo_agora = "inimigo_mimico_forte") {
				array_push(global.baralho, ataque_susto);
				array_push(global.baralho, ataque_bafo);
				array_push(global.baralho, ataque_enfurecido);
			}
			if (global.inimigo_agora = "inimigo_cogumelo_gigante") {
				array_push(global.baralho, ataque_alucinar);
				array_push(global.baralho, ataque_poros);
			}
			if (global.inimigo_agora = "inimigo_rei") {
				array_push(global.baralho, ataque_espada_sagrada);
				array_push(global.baralho, ataque_lamento_rei);
			}
		}
		if (global.momento = "recompensa") {
			
		}
}

function preenche_mao() {
	var _indices_disponiveis = [];
	for (var i = 0; i < array_length(global.baralho); i++) {
		array_push(_indices_disponiveis, i);
	}
	var _quantidade = min(3, array_length(_indices_disponiveis));

	for (var i = 0; i < _quantidade; i++) {
		var _pos = irandom(array_length(_indices_disponiveis) - 1);
		var _indice_carta = _indices_disponiveis[_pos];

		array_push(global.mao, global.baralho[_indice_carta]);
		array_delete(_indices_disponiveis, _pos, 1);
	}
}