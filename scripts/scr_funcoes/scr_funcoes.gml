// Deixando o jogo aleatorio
randomize(); 

function desenha_carta(){
	
	draw_sprite_ext(spr_carta_fundo, carta.img_fundo, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

function cria_baralho() {

		// CRIANDO AS CARTAS
		// var _carta = new cria_carta(_nome, _img_arte, _img_fundo)
		var caminho_subir_escada = new cria_carta("Subir Escada", 0, 0);
		var caminho_corredor = new cria_carta("Corredor", 0, 1);
		var caminho_cozinha = new cria_carta("Cozinha", 0, 2);
		var caminho_camara_secreta = new cria_carta("Camara Secreta", 0, 3);
		var caminho_descer_escada = new cria_carta("Descer_escada", 0, 4);
		var caminho_salao = new cria_carta("Salao", 0, 5);
		var caminho_lavabo = new cria_carta("Lavabo", 0, 6);
		var caminho_despensa = new cria_carta("Despensa", 0, 7);
		var caminho_camara_rei = new cria_carta("Camara do Rei", 0, 8);
		
		
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
			if (global.fase = 10) {
				array_push(global.baralho, caminho_camara_rei);
			}
		}
		if (global.momento = "inimigo") {
			if (global.inimigo_dificuldade = 0) {
				
			} else if (global.inimigo_dificuldade = 1) {
				
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