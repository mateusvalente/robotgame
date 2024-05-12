/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var moveX = lengthdir_x(veloc, image_angle);
var moveY = lengthdir_y(veloc, image_angle);

// Move o objeto na direção calculada
x += moveX;
y += moveY;

if(place_meeting(x,y, obj_parede) or place_meeting(x,y, obj_parede_inimigo) ) {
	instance_destroy();
}