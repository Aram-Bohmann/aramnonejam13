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
				array_push(global.baralho, inimigo_larva);
				array_push(global.baralho, inimigo_esqueleto_guerreiro);
				array_push(global.baralho, inimigo_esqueleto_arqueiro);
			} else if (global.inimigo_dificuldade = 2) {
				array_push(global.baralho, inimigo_aranha);
				array_push(global.baralho, inimigo_mimico_fraco);
				array_push(global.baralho, inimigo_esqueleto_guerreiro);
				array_push(global.baralho, inimigo_esqueleto_arqueiro);
			} else if (global.inimigo_dificuldade = 3) {
				array_push(global.baralho, inimigo_aranha);
				array_push(global.baralho, inimigo_globin);
				array_push(global.baralho, inimigo_lobisomem);
				array_push(global.baralho, inimigo_mimico_fraco);
			} else if (global.inimigo_dificuldade = 4) {
				array_push(global.baralho, inimigo_globin);
				array_push(global.baralho, inimigo_lobisomem);
				array_push(global.baralho, inimigo_mimico_fraco);
			} else if (global.inimigo_dificuldade = 5) {
				array_push(global.baralho, inimigo_ciclope);
				array_push(global.baralho, inimigo_globin);
				array_push(global.baralho, inimigo_lobisomem);
				array_push(global.baralho, inimigo_mimico_forte);
			} else if (global.inimigo_dificuldade = 6) {
				array_push(global.baralho, inimigo_ciclope);
				array_push(global.baralho, inimigo_fantasma_cozinheiro);
				array_push(global.baralho, inimigo_lobisomem);
				array_push(global.baralho, inimigo_mimico_forte);
			} else if (global.inimigo_dificuldade = 7) {
				array_push(global.baralho, inimigo_cogumelo_gigante);
				array_push(global.baralho, inimigo_fantasma_cozinheiro);
				array_push(global.baralho, inimigo_vampiro);
				array_push(global.baralho, inimigo_mimico_forte);
			} else if (global.inimigo_dificuldade = 8) {
				array_push(global.baralho, inimigo_larva);
				array_push(global.baralho, inimigo_esqueleto_guerreiro);
				array_push(global.baralho, inimigo_esqueleto_arqueiro);
				array_push(global.baralho, inimigo_mimico_forte);
			} else if (global.inimigo_dificuldade = 9) {
				array_push(global.baralho, inimigo_rei);
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