/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//controlar a posição da arma em relação ao personagem
x = obj_personagem.x + 8;
y = obj_personagem.y - 109;

image_angle = 323;


if(obj_personagem.orientacao == "E") {
	image_angle = 37;
    image_xscale = - 1;
	x = obj_personagem.x - 8;
} else {
	image_xscale =  1;
}


//informações do mouse
var _clicou = mouse_check_button(mb_left);
var _direc = point_direction(x,y, mouse_x,mouse_y);

//instanciar o objeto bala, com o angulo correto
if (_clicou && alarm[0] <= 0) {
	
	alarm[0] = 60;
	
	var _xx = x + lengthdir_x(0,_direc);
	var _yy = y + lengthdir_y(0, _direc);
	var _tiro = instance_create_layer(_xx, _yy, "Instances", obj_bala_personagem);
	
	if(obj_personagem.orientacao = "E") {
		obj_bala_personagem.image_xscale = -1;
	} else {
		obj_bala_personagem.image_xscale = 1;
	}
	
		
	_tiro.direction = _direc;
	_tiro.image_angle = _direc;
}