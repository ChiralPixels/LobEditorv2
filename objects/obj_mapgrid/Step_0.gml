//change the sprite to make collision box fit the door buttons
if obj_controller.menubuttonx=1 and obj_controller.menubuttony<3 sprite_index=spr_minigrid
	else sprite_index=spr_placeholder_2;
//swap out for roomgrid when changing to room edit mode
if obj_controller.roomormap=1 {instance_destroy();
	instance_create_depth(x,y,depth,obj_roomgrid);}
