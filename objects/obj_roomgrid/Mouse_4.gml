#region ROOM EDITOR
//this makes sure editor is in room mode
if obj_controller.roomormap=1 {
	if obj_controller.menubuttonx=1 {
		if obj_controller.toolbuttonx=1
		and obj_controller.toolbuttony=2
		then instance_create_depth(x,y,depth-1,obj_wall);
		if obj_controller.toolbuttonx=2
		and obj_controller.toolbuttony=2
		then instance_create_depth(x,y,depth-1,obj_block);
		if obj_controller.toolbuttonx=3
		and obj_controller.toolbuttony=2
		then instance_create_depth(x,y,depth-1,obj_throwable);
		
		if obj_controller.toolbuttonx=1
		and obj_controller.toolbuttony=4
		then instance_create_depth(x,y,depth-1,obj_pit);
		if obj_controller.toolbuttonx=2
		and obj_controller.toolbuttony=4
		then instance_create_depth(x,y,depth-1,obj_ice);
		if obj_controller.toolbuttonx=3
		and obj_controller.toolbuttony=4
		then instance_create_depth(x,y,depth-1,obj_water);
		
		if obj_controller.toolbuttonx=1
		and obj_controller.toolbuttony=6
		then instance_create_depth(x,y,depth-1,obj_stairs_down);
		if obj_controller.toolbuttonx=3
		and obj_controller.toolbuttony=6
		then instance_create_depth(x,y,depth-1,obj_stairs_up);
	}
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
		
		if obj_controller.toolbuttonx=1
		and obj_controller.toolbuttony=3
		then instance_create_depth(x,y,depth-1,obj_moveplat);
		if obj_controller.toolbuttonx=2
		and obj_controller.toolbuttony=3
		then instance_create_depth(x,y,depth-1,obj_conveyor);
		if obj_controller.toolbuttonx=3
		and obj_controller.toolbuttony=3
		then instance_create_depth(x,y,depth-1,obj_rapids);
		
		if obj_controller.toolbuttonx=1
		and obj_controller.toolbuttony=5
		then instance_create_depth(x,y,depth-1,obj_breakwall);
		if obj_controller.toolbuttonx=2
		and obj_controller.toolbuttony=5
		then instance_create_depth(x,y,depth-1,obj_inviswall);
		if obj_controller.toolbuttonx=3
		and obj_controller.toolbuttony=5
		then instance_create_depth(x,y,depth-1,obj_bombwall);
		
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