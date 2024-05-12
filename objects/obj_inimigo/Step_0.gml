/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if place_meeting(x,y, obj_parede_inimigo) {
	if(direc == "D")  {
		direc = "E";
	} else {
		direc = "D";
	}
	
}

if direc == "D" {
	x += veloc;
	image_xscale = 1;
} else {
	image_xscale = -1;
	x -= veloc;
}

 

if(vida == 0 ) {
	instance_destroy();
	with(obj_arma_inimigo) {
		instance_destroy();
	}
	
	if (instance_exists(obj_bala_inimigo) ) {
		with(obj_bala_inimigo) {
			instance_destroy();
		}
	}
	
}