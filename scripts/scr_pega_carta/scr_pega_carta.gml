function scr_pega_carta(){
	cria_baralho();
	preenche_mao();

	for (var i = 0; i < array_length(global.mao); i++) {
	    var _inst = instance_create_layer(624 + i * 330, 384, "Instances", obj_carta);
	    _inst.carta = global.mao[i];
	}
	global.baralho = []; 
	global.mao = [];
}