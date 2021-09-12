
#region SPAWN OBJECTS INTO MAPS
//this is to make sure nothing is spawned if the user is clicking to delete an object
if keyboard_check(vk_shift) exit;
//this is a dumb way to spawn objects based on what ui buttons are selected
//first we create rooms if the right button is selected
if obj_controller.menubuttonx=1 {
		if obj_controller.menubuttony>2 exit;
		if ! place_empty(x,y,obj_room) exit;
		if obj_controller.toolbuttonx=0 and obj_controller.toolbuttony=0
			{var i=instance_create_depth(x,y,depth,obj_room); i.image_index=0;}
		if ! place_empty(x,y,obj_room) exit;
		if obj_controller.toolbuttonx=1
		and obj_controller.toolbuttony=1
			{var i=instance_create_depth(x,y,depth,obj_room); i.image_index=0;}
		if obj_controller.toolbuttonx=2
		and obj_controller.toolbuttony=1
			{var i=instance_create_depth(x,y,depth,obj_room); i.image_index=1;}
		if obj_controller.toolbuttonx=3
		and obj_controller.toolbuttony=1
		{var i=instance_create_depth(x,y,depth,obj_room); i.image_index=2;}
		
		if obj_controller.toolbuttonx=1
		and obj_controller.toolbuttony=2
			{var i=instance_create_depth(x,y,depth,obj_room); i.image_index=3;}
		if obj_controller.toolbuttonx=2
		and obj_controller.toolbuttony=2
			{var i=instance_create_depth(x,y,depth,obj_room); i.image_index=4;}
		if obj_controller.toolbuttonx=3
		and obj_controller.toolbuttony=2
			{var i=instance_create_depth(x,y,depth,obj_room); i.image_index=5;}
		
		if obj_controller.toolbuttonx=1
		and obj_controller.toolbuttony=3
			{var i=instance_create_depth(x,y,depth,obj_room); i.image_index=6;}
		if obj_controller.toolbuttonx=2
		and obj_controller.toolbuttony=3
			{var i=instance_create_depth(x,y,depth,obj_room); i.image_index=7;}
		if obj_controller.toolbuttonx=3
		and obj_controller.toolbuttony=3
			{var i=instance_create_depth(x,y,depth,obj_room); i.image_index=8;}
}
//this does the same thing for placing challenges and the entrance
if obj_controller.menubuttonx=1 and obj_controller.menubuttony=5 {
	with (obj_entrance) {instance_destroy();}
	instance_create_depth(x,y,depth-3,obj_entrance);}

if obj_controller.menubuttonx=2 {
		if ! place_empty(x,y,obj_chall) exit;
		if obj_controller.toolbuttony=1
			{var i=instance_create_depth(x,y,depth-1,obj_chall); i.image_index=1;}
		
		if obj_controller.toolbuttony=3
			{var i=instance_create_depth(x,y,depth-1,obj_chall); i.image_index=4;}
	
		if obj_controller.toolbuttony=5
			{var i=instance_create_depth(x,y,depth-1,obj_chall); i.image_index=7;}
if obj_controller.menubuttonx=2 and obj_controller.toolbuttony=7 instance_create_depth(x,y,depth-1,obj_heal);
}
//places triggers
if obj_controller.menubuttonx=3 {
	if place_empty(x,y,obj_trigger) and obj_controller.toolbuttony=1
		instance_create_depth(x,y,depth-2,obj_trigger);
}
//places locks
if obj_controller.menubuttonx=4 {
	if obj_controller.menubuttony<3 and place_empty(x,y,obj_lock) {
		instance_create_depth(x,y,depth-2,obj_lock);
		var i=0
		i=instance_create_depth(x,y,depth-3,obj_direction);
		i.lockdir=true;
	}
	if obj_controller.menubuttony=5 and place_empty(x,y,obj_boss)
		instance_create_depth(x,y,depth-2,obj_boss);
}
#endregion
