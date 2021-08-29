
#region ROOM EDITOR
//this makes sure editor is in room mode
if obj_controller.roomormap=1 {
//pathing menu (map icon)
	if obj_controller.menubuttonx=1 {
		if obj_controller.toolbuttony=2{
			if obj_controller.toolbuttonx=1
			instance_create_depth(x,y,depth-1,obj_wall);
			if obj_controller.toolbuttonx=2
			instance_create_depth(x,y,depth-1,obj_block);
			if obj_controller.toolbuttonx=3
			instance_create_depth(x,y,depth-1,obj_throwable);
		}
		if obj_controller.toolbuttony=4{
			if obj_controller.toolbuttonx=1
			instance_create_depth(x,y,depth-1,obj_pit);
			if obj_controller.toolbuttonx=2
			instance_create_depth(x,y,depth-1,obj_ice);
			if obj_controller.toolbuttonx=3
			instance_create_depth(x,y,depth-1,obj_water);
		}
		if obj_controller.toolbuttony=6{
			if obj_controller.toolbuttonx=1
			instance_create_depth(x,y,depth-1,obj_stairs_down);
			//if obj_controller.toolbuttonx=2
			//instance_create_depth(x,y,depth-1,obj_???);
			if obj_controller.toolbuttonx=3
			instance_create_depth(x,y,depth-1,obj_stairs_up);
		}
	}
//challenge menu (gradcap icon)
	if obj_controller.menubuttonx=2 {
		if obj_controller.toolbuttony=1 {
			if obj_controller.toolbuttonx=1
			instance_create_depth(x,y,depth-1,obj_enemy1);
			if obj_controller.toolbuttonx=2
			instance_create_depth(x,y,depth-1,obj_enemy2);
			if obj_controller.toolbuttonx=3
			instance_create_depth(x,y,depth-1,obj_enemy3);
		}
//THIS IS WHERE THE ISSUE STARTS!
		if obj_controller.toolbuttony=3 {
			if obj_controller.toolbuttonx=1
			instance_create_depth(x,y,depth-1,obj_box);
//instead of a box, it spawns obj_enemy3...
			if obj_controller.toolbuttonx=2
			instance_create_depth(x,y,depth-1,obj_xmark);
//...and this spawns obj_box...
			if obj_controller.toolbuttonx=3
			instance_create_depth(x,y,depth-1,obj_pushable);
//...it continues to spawn the "next" icon, until...
		}
		if obj_controller.toolbuttony=4 {
			if obj_controller.toolbuttonx=1
			instance_create_depth(x,y,depth-1,obj_floorbutton);
			if obj_controller.toolbuttonx=2
			instance_create_depth(x,y,depth-1,obj_mirror);
//...right here where the pattern of what is spawning what stops even making sense to me!
			if obj_controller.toolbuttonx=3
			instance_create_depth(x,y,depth-1,obj_bombable);
		}
		if obj_controller.toolbuttony=6 {
			if obj_controller.toolbuttonx=1
			instance_create_depth(x,y,depth-1,obj_spiketrap);
			if obj_controller.toolbuttonx=2
			instance_create_depth(x,y,depth-1,obj_arrowtrap);
			if obj_controller.toolbuttonx=3
			instance_create_depth(x,y,depth-1,obj_crushtrap);
		}
		if obj_controller.toolbuttony=7 {
			if obj_controller.toolbuttonx=1
			instance_create_depth(x,y,depth-1,obj_fireblock);
			if obj_controller.toolbuttonx=2
			instance_create_depth(x,y,depth-1,obj_fireball);
			if obj_controller.toolbuttonx=3
			instance_create_depth(x,y,depth-1,obj_sparktrap);
		}
	}
}
//anyway, i have no idea what's happening!

#endregion