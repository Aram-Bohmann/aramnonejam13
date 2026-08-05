if (escolha = false) {
	if (global.campeao = "guerreiro") {
		escolha = true
		instance_create_layer(192, 448, "Instances", obj_campeao_guerreiro_game)
	}
	if (global.campeao = "arqueiro") {
		escolha = true
		instance_create_layer(192, 448, "Instances", obj_campeao_arqueiro_game)
	}
}