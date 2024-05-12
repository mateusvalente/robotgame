/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//configurando a posição da arma
x = obj_inimigo.x + 8;
y = obj_inimigo.y - 54;

//show_debug_message(obj_inimigo.image_index);




if ( alarm[0] <= 0 && floor(obj_inimigo.image_index) == 6) {
	
	
	
	alarm[0] = 10;
	
	
	var _tiro = instance_create_layer(x, y, "Instances", obj_bala_inimigo);
	
	
	
}