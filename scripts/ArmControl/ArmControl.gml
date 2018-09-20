//Purpose: Control The movement of the arm object






//Keep the Arm Attached to the player when he moves
if player.speed == 0{

    x = player.x;
    y = player.y;
    
}
else{

    //RIGHT
    if player.direction == 0{
    
        x = player.x + player.speed;
        y = player.y;
    
    //UP
    }else if player.direction == 90{
    
        x = player.x;
        y = player.y - player.speed;
        
    //LEFT
    }else if player.direction == 180{
    
        x = player.x - player.speed;
        y = player.y;
        
    //DOWN
    }else if player.direction == 270{
    
        x = player.x ;
        y = player.y + player.speed;
    
    }
    
}


//Grab the equipped item's name from the inventory and store it in the arm
with(player){
    other.itemholding = Inventory[FindEquippedSlot(),0];
}

//Display weapon and attacks
if itemholding != "" {//If something is 
	
	if player.attacking == false{
		
		sprite_index = GetWeaponSprite(itemholding,GetMouseDirection())
		
		if GetMouseDirection() == "left"{
			
			depth = 1
		
		}
		else if GetMouseDirection() == "right"{
		
			depth = -1
		
		}
		else if GetMouseDirection() == "up"{
	
			depth = 1
	
		}
		else if GetMouseDirection() == "down"{
		
			depth = -1
		
		}
	}
	else{ //ATTACKing
		
		if GetMouseDirection() == "left"{
		
			PlayerAttack("left")
			depth = 1
		
		}
		else if GetMouseDirection() == "right"{
		
			PlayerAttack("right")
			depth = -1
		
		}
		else if GetMouseDirection() == "up"{
	
			PlayerAttack("up")
			depth = 1
	
		}
		else if GetMouseDirection() == "down"{
		
			PlayerAttack("down")
			depth = -1
			
		}
		
	}
	
}
else{//If nothing is equipped
	
	if player.attacking == false{
		if GetMouseDirection() == "left"{
		
			sprite_index = nodraw
			depth = 1
		
		}
		else if GetMouseDirection() == "right"{
		
			sprite_index = nodraw
			depth = -1
		
		}
		else if GetMouseDirection() == "up"{
	
			sprite_index = nodraw
			depth = 1
	
		}
		else if GetMouseDirection() == "down"{
		
			sprite_index = nodraw
			depth = -1
		
		}
	}
	else{ //ATTACKing
		
		if GetMouseDirection() == "left"{
		
			sprite_index = template_arm_l
			PlayerAttack("left")
			depth = 1
		
		}
		else if GetMouseDirection() == "right"{
		
			sprite_index = template_arm_r
			PlayerAttack("right")
			depth = -1
		
		}
		else if GetMouseDirection() == "up"{
	
			sprite_index = template_arm_b
			PlayerAttack("up")
			depth = 1
	
		}
		else if GetMouseDirection() == "down"{
		
			sprite_index = template_arm_f
			PlayerAttack("down")
			depth = -1
			
		}
		
	}
	
	
	
	
}
	
	
	
	



//Stop animating when weapon changes

if keyboard_check_pressed(ord("1")){
    
    sprite_index = nodraw;
	itemholding = player.Inventory[player.equipped,0];
    
}else if keyboard_check_pressed(ord("2")){

    sprite_index = nodraw;
	itemholding = player.Inventory[player.equipped,0];

}else if keyboard_check_pressed(ord("3")){

    sprite_index = nodraw;
	itemholding = player.Inventory[player.equipped,0];

}else if keyboard_check_pressed(ord("4")){

    sprite_index = nodraw;
	itemholding = player.Inventory[player.equipped,0];
	
}else if keyboard_check_pressed(ord("5")){

    sprite_index = nodraw;
	itemholding = player.Inventory[player.equipped,0];
}
    

if mouse_wheel_up(){

    sprite_index = nodraw;
	itemholding = player.Inventory[player.equipped,0];
    
}

if mouse_wheel_down(){

    sprite_index = nodraw;
	itemholding = player.Inventory[player.equipped,0];

}
