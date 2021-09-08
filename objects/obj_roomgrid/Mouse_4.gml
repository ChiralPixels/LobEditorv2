
#region SPAWN OBJECTS INTO ROOMS
//this makes sure editor is in map mode
if keyboard_check(vk_shift) exit;
//this is a dumb way to spawn objects based on what ui buttons are selected
//first we create obstacles/paths if the right button is selected
if obj_controller.roomormap=1 {
	if obj_controller.menubuttonx=1 {
		if obj_controller.toolbuttonx=1
		and obj_controller.toolbuttony=2
		and place_empty(x,y,obj_room)
		then instance_create_depth(x,y,depth-1,obj_wall);
		if obj_controller.toolbuttonx=2
		and obj_controller.toolbuttony=2
		and place_empty(x,y,obj_room)
		then instance_create_depth(x,y,depth-1,obj_block);
		if obj_controller.toolbuttonx=3
		and obj_controller.toolbuttony=2
		and place_empty(x,y,obj_room)
		then instance_create_depth(x,y,depth-1,obj_throwable);
		if obj_controller.toolbuttonx=1
		and obj_controller.toolbuttony=4
		and place_empty(x,y,obj_room)
		then instance_create_depth(x,y,depth-1,obj_pit);
		if obj_controller.toolbuttonx=2
		and obj_controller.toolbuttony=4
		and place_empty(x,y,obj_room)
		then instance_create_depth(x,y,depth-1,obj_ice);
		if obj_controller.toolbuttonx=3
		and obj_controller.toolbuttony=4
		and place_empty(x,y,obj_room)
		then instance_create_depth(x,y,depth-1,obj_water);
		if obj_controller.toolbuttonx=1
		and obj_controller.toolbuttony=6
		then instance_create_depth(x,y,depth-1,obj_stairs_down);
		if obj_controller.toolbuttonx=3
		and obj_controller.toolbuttony=6
		then instance_create_depth(x,y,depth-1,obj_stairs_up);
	}
//this does the same thing for placing enemies
	if obj_controller.menubuttonx=2 {
		if obj_controller.toolbuttonx=1
		and obj_controller.toolbuttony=1
		then instance_create_depth(x,y,depth-1,obj_enemy1);
		if obj_controller.toolbuttonx=2
		and obj_controller.toolbuttony=1
		then instance_create_depth(x,y,depth-1,obj_enemy2);
		if obj_controller.toolbuttonx=3
		and obj_controller.toolbuttony=1
		then instance_create_depth(x,y,depth-1,obj_enemy3);
//places puzzle elements
		if obj_controller.toolbuttonx=1
		and obj_controller.toolbuttony=3
		then instance_create_depth(x,y,depth-1,obj_box);
		if obj_controller.toolbuttonx=2
		and obj_controller.toolbuttony=3
		then instance_create_depth(x,y,depth-1,obj_xmark);
		if obj_controller.toolbuttonx=3
		and obj_controller.toolbuttony=3
		then instance_create_depth(x,y,depth-1,obj_pushable);
		if obj_controller.toolbuttonx=1
		and obj_controller.toolbuttony=4
		then instance_create_depth(x,y,depth-1,obj_floorbutton);
		if obj_controller.toolbuttonx=2
		and obj_controller.toolbuttony=4
		then instance_create_depth(x,y,depth-1,obj_mirror);
		if obj_controller.toolbuttonx=3
		and obj_controller.toolbuttony=4
		then instance_create_depth(x,y,depth-1,obj_bombable);
//places traps
		if obj_controller.toolbuttonx=1
		and obj_controller.toolbuttony=6
		then instance_create_depth(x,y,depth-1,obj_spiketrap);
		if obj_controller.toolbuttonx=2
		and obj_controller.toolbuttony=6
		then instance_create_depth(x,y,depth-1,obj_arrowtrap);
		if obj_controller.toolbuttonx=3
		and obj_controller.toolbuttony=6
		then instance_create_depth(x,y,depth-1,obj_crushtrap);
		if obj_controller.toolbuttonx=1
		and obj_controller.toolbuttony=7
		then instance_create_depth(x,y,depth-1,obj_fireblock);
		if obj_controller.toolbuttonx=2
		and obj_controller.toolbuttony=7 {
			instance_create_depth(x,y,depth-1,obj_fireball);
			instance_create_depth(x,y,depth-2,obj_direction);
		}
		if obj_controller.toolbuttonx=3
		and obj_controller.toolbuttony=7 {
			instance_create_depth(x,y,depth-1,obj_sparktrap);
			instance_create_depth(x,y,depth-2,obj_direction);
		}
	}
//places remote triggers
	if obj_controller.menubuttonx=3 {
		if obj_controller.toolbuttonx=1
		and obj_controller.toolbuttony=1
		then instance_create_depth(x,y,depth-1,obj_orb);
		if obj_controller.toolbuttonx=2
		and obj_controller.toolbuttony=1
		then instance_create_depth(x,y,depth-1,obj_torch);
		if obj_controller.toolbuttonx=3
		and obj_controller.toolbuttony=1
		then instance_create_depth(x,y,depth-1,obj_switch);
//places movement elements
		if obj_controller.toolbuttonx=1
		and obj_controller.toolbuttony=3 {
		instance_create_depth(x,y,depth-1,obj_moveplat); 
		instance_create_depth(x,y,depth-2,obj_direction);}
		if obj_controller.toolbuttonx=2
		and obj_controller.toolbuttony=3 {
		instance_create_depth(x,y,depth-1,obj_conveyor);
		instance_create_depth(x,y,depth-2,obj_direction);}
		if obj_controller.toolbuttonx=3
		and obj_controller.toolbuttony=3 {
		instance_create_depth(x,y,depth-1,obj_rapids);
		instance_create_depth(x,y,depth-2,obj_direction);}
//places secret entrances
		if obj_controller.toolbuttonx=1
		and obj_controller.toolbuttony=5
		then instance_create_depth(x,y,depth-1,obj_breakwall);
		if obj_controller.toolbuttonx=2
		and obj_controller.toolbuttony=5
		then instance_create_depth(x,y,depth-1,obj_inviswall);
		if obj_controller.toolbuttonx=3
		and obj_controller.toolbuttony=5
		then instance_create_depth(x,y,depth-1,obj_bombwall);
//places location for a treasure chest
		if obj_controller.toolbuttonx=2
		and obj_controller.toolbuttony=7
		then instance_create_depth(x,y,depth-1,obj_chest);
	}
//	if obj_controller.menubuttonx=4 {
//		if obj_controller.toolbuttonx=2
//		and obj_controller.toolbuttony=1
//		then instance_create_depth(x,y,depth-1,obj_switchoff);
//
//		if obj_controller.toolbuttonx=2
//		and obj_controller.toolbuttony=3
//		then instance_create_depth(x,y,depth-1,obj_switchon);
//
//		if obj_controller.toolbuttonx=2
//		and obj_controller.toolbuttony=5
//		then instance_create_depth(x,y,depth-1,obj_itemdrop);
//		
//		if obj_controller.toolbuttonx=2
//		and obj_controller.toolbuttony=7
//		then instance_create_depth(x,y,depth-1,obj_keyitem);
//	}
}
#endregion
