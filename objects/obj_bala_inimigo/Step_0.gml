/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (obj_inimigo.direc == "D") {
	x = x + veloc;
	image_xscale = 1;
	
} else {
	x = x - veloc;
	image_xscale = -1;
}
 
if(place_meeting(x,y, obj_parede) or place_meeting(x,y, obj_parede_inimigo) ) {
	instance_destroy();
}