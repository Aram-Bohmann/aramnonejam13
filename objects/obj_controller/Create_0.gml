cria_baralho();
preenche_mao();

for (var i = 0; i < array_length(global.mao); i++) {
    var _inst = instance_create_layer(x + i * 150, y, "Instances", obj_carta);
    _inst.carta = global.mao[i];
}