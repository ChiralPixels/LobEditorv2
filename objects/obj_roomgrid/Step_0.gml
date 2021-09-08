//swap out for roomgrid when changing to map edit mode
if obj_controller.roomormap=0 {instance_destroy();
	instance_create_depth(x,y,depth,obj_mapgrid);}