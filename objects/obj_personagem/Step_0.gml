/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
direita = keyboard_check(ord("D"));
esquerda = keyboard_check(ord("A"));
cima = keyboard_check(ord("W"));

sprite_index = spr_personagem_parado;


if(vida ==0 ) {
	 //instance_destroy();
	 room_goto(ro_over);
	 
	

}

var targetX = obj_personagem.x;
var larguraTela = camera_get_view_width(view_camera[0]);
var cameraX = targetX - (larguraTela/ 2 );
cameraX = max(cameraX, 0);
camera_set_view_pos(view_camera[0], cameraX, camera_get_view_y(view_camera[0]));

 var alturaTela = camera_get_view_height(view_camera[0]);
 
 if (y >= alturaTela) {
    // Adicione aqui as ações para a morte do personagem
   vida = 0; // Exemplo de ação: destruir o objeto do personagem
    
    // Você pode adicionar outras ações aqui, como mostrar uma mensagem de "Game Over"
   
} 
 
/*

// Largura da tela
    
// Limitar a posição X da câmera para que não ultrapasse a borda esquerda da sala

    
// Definir a posição X da câmera


var alturaTela = camera_get_view_height(view_camera[0]);

// Verificar se o personagem tocou o final da tela na parte inferior
if (y >= alturaTela) {
    // Adicione aqui as ações para a morte do personagem
   vida = 0; // Exemplo de ação: destruir o objeto do personagem
    
    // Você pode adicionar outras ações aqui, como mostrar uma mensagem de "Game Over"
   
} */


hveloc = 0;

if(direita == 1) {
	sprite_index = spr_personagem_andando;
	orientacao = "D"
	hveloc = 1 * veloc;
}


if(esquerda == 1) {
	sprite_index = spr_personagem_andando;
	orientacao = "E"
	hveloc = -1 * veloc;
}

if(orientacao == "D") {
	image_xscale =1;
} else {
	image_xscale = -1;
}




//aplicando a força de gravidade
if !place_meeting(x,y +1, obj_parede) {
	vveloc += gravidade;
	sprite_index = spr_personagem_pulando;
} else {
   if cima  {
		vveloc = -4.8;
	}
}


if alarm[0] > 0 { 
	if image_alpha >= 1 {
		dano = -0.05;
	} else if image_alpha <= 0 {
	    dano = 0.05;
	}	
	
	image_alpha  += dano;
} else {
	image_alpha = 1;
} 



if place_meeting(x+hveloc, y, obj_parede) {
	while !place_meeting(x + sign(hveloc), y, obj_parede) {
		x += sign(hveloc);
	}
	
	hveloc = 0;
}

x += hveloc;

if place_meeting(x, y + vveloc, obj_parede) {
	while !place_meeting(x, y  + sign(vveloc), obj_parede) {
		y += sign(vveloc);
	}
	
	vveloc = 0;
}

y += vveloc; 