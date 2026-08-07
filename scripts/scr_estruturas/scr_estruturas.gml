#region Arte

enum ARTE {
	subir_escada,
	corredor,
	cozinha,
	camara_secreta,
	descer_escada,
	salao,
	lavabo,
	despensa,
	espinho,
	camara_rei,
	
	TOTAL
	
}
#endregion


// Estruturas do baralho
global.baralho = [];

// Estruturas da mão
global.mao = [];

// criando a estrutura da carta
function cria_carta(_img_arte = 0, _img_fundo = 0) constructor {
	img_arte	= _img_arte;
	img_fundo	= _img_fundo;
	
}