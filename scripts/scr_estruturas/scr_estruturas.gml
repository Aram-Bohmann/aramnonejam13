#region Arte

enum ARTE {
	BOMBA,
	
	TOTAL
	
}
#endregion


// Estruturas do baralho
global.baralho = [];

// Estruturas da mão
global.mao = [];

// criando a estrutura da carta
function cria_carta(_nome = "", _img_arte = 0, _img_fundo = 0) constructor {
	nome		= _nome;
	img_arte	= _img_arte;
	img_fundo	= _img_fundo;
	
}