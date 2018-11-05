//Purpose: Determining behavior for shop npcs
direction = 270;
var nearestPlayer;
if (instance_exists(player)){
	nearestPlayer = instance_nearest(x,y,player);
} 

//If a player hits E, The nearest player opens a quest menu(this will need to be fixed later when multiplayer happens)
if (keyboard_check_pressed(ord("E"))){
	if (currentQuester == noone){
		
		if (distance_to_object(nearestPlayer) <= interactRadius ){
			currentQuester = nearestPlayer;
			currentQuester.hud.quest = self;
			currentQuester.hud.drawMode = MENU_DRAW.QUEST;
			
		}
	
	}
	
	else{
		currentQuester.hud.quest = noone;
		currentQuester.hud.drawMode = -1;
		currentQuester = noone;
			
	}
}

//If the player moves outside of the radius of the quest. Close the menu
if (currentQuester != noone){
	
	if (distance_to_object(currentQuester) > interactRadius){
		
		currentQuester.hud.quest = noone;
		currentQuester.hud.drawMode = -1;
		currentQuester = noone;
		
		
	}
	
}