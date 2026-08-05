// Deixando o jogo aleatorio
randomize(); 

function desenha_carta(){
	
	if (carta == undefined) exit;
	draw_sprite_ext(spr_carta_fundo, carta.img_fundo, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

function cria_baralho() {

		// CRIANDO AS CARTAS
		// var _carta = new cria_carta(_nome, _img_arte, _img_fundo)
		var bomba_card = new cria_carta("Bomba", 0, 0);
		
		
		// INSERINDO AS CARTAS AO BARALHO
		array_push(global.baralho, bomba_card);
}

function preenche_mao() {
	// Pegando algumas cartas do baralho
	for (var i = 0; i < 3; i++) {
		var _carta_atual = irandom(array_length(global.baralho) -1);
		array_push(global.mao, global.baralho[_carta_atual]);	
	}
}