
#region REFRESH GRID DATA

//ROOM EDITOR

// Presets.
var yOffset = 1;
var xOffset = 5;
var scale = 16;

// Initialize variables to hold the temporary object values.
var obj_id;
var dir_id;

// Itterate through the room.
for (var i=0; i < 7; i += 1) {
	for (var j=0; j<7; j+=1) {
		
		// Reset the temporary object values.
		obj_id = 0;
		dir_id = 0;
		// Check for an object
		yy = (yOffset + j) * scale;
		xx = (xOffset + i) * scale;
		var inst = collision_point(xx, yy, obj_block, true, true);
		// If an object is found, get it's values.
		if (inst != noone){ 
			// First digit is the menu (1=path,2=challenge,3=key,4=lock)
			// Second digit is the X location of the object on the toolbar
			// Third digit is the Y location on the same toolbar
			obj_id = inst.obj_id;
			// Starting at zero on the right, counterclockwise in intervals of 90.
			dir_id = inst.image_index;
		}
		// Write the values to the grid.
		ds_grid_set(obj_grid,j,i, obj_id);
		ds_grid_set(dir_grid,j,i, dir_id);
		
	}
}

//write direction data to grid
//store's rooms direction as number



//MAP EDITOR

//write room shape data to grid
//0=empty, 1=plain, 2=split, 3=corner, 4="T"shape, 5=cross
//6="I"hall, 7="L"hall, 8="U"hall, 9=double hall
var temp=0;
for (var i=0; i < 7; i += 1) {
	for (var j=0; j<7; j+=1) {
		if !place_empty((i-80)/16,(j-16)/16,obj_room) {
			temp=collision_point((i+80)/16,(j-16)/16,obj_room,false,true);
			ds_grid_set(shape_grid,i,j,temp.image_index+1);
		}
	}
}
//write room's rotation to grid
//store's rooms direction as number
//starting w/ zero on the right, counterclockwise in intervals of 90
var temp=0;
for (var i=0; i < 7; i += 1) {
	for (var j=0; j<7; j+=1) {
		if !place_empty((i-80)/16,(j-16)/16,obj_direction) {
			temp=collision_point((i+80)/16,(j-16)/16,obj_direction,false,true);
			ds_grid_set(rot_grid,i,j,temp.image_index);
		}
	}
}
//write room's challenge to grid
//each type has three variables for the three levels of challenge for that map
//0=empty, 1-3=combat, 4-6=puzzle, 7-9=danger(traps)
var temp=0;
for (var i=0; i < 7; i += 1) {
	for (var j=0; j<7; j+=1) {
		if !place_empty((i-80)/16,(j-16)/16,obj_chall) {
			temp=collision_point((i+80)/16,(j-16)/16,obj_chall,false,true);
			ds_grid_set(chall_grid,i,j,temp.image_index+1);
		}
	}
}
//write room's trigger type to grid
//0=empty, 1=switch, 2=key, 3=orb, 4=beacon
var temp=0;
for (var i=0; i < 7; i += 1) {
	for (var j=0; j<7; j+=1) {
		if !place_empty((i-80)/16,(j-16)/16,obj_trigger) {
			temp=collision_point((i+80)/16,(j-16)/16,obj_trigger,false,true);
			ds_grid_set(trig_grid,i,j,temp.image_index+1);
		}
	}
}
//write room's lock type to grid (note, does NOT use same codes as trig_grid!)
//0=empty, 1=switch on, 2=switch off 3=key, 4=key item, 5=orb, 6=beacon
var temp=0;
for (var i=0; i < 7; i += 1) {
	for (var j=0; j<7; j+=1) {
		if !place_empty((i-80)/16,(j-16)/16,obj_lock) {
			temp=collision_point((i+80)/16,(j-16)/16,obj_lock,false,true);
			ds_grid_set(lock_grid,i,j,temp.image_index+1);
		}
	}
}

//write lock direction to grid
//store's the room's lock's direction as number
//starting w/ zero on the right, counterclockwise in intervals of 90
//the locked door will always be the first door (hdr1,vdr1)
var temp=0;
for (var i=0; i < 7; i += 1) {
	for (var j=0; j<7; j+=1) {
		if !place_empty((i-80)/16,(j-16)/16,obj_lock) {
			temp=collision_point((i+80)/16,(j-16)/16,obj_direction,false,true);
			ds_grid_set(lockdir_grid,i,j,temp.image_index);
		}
	}
}

//here's the code for creating the door objects
//each space has 

//	var j=0;
//	repeat(7){
//		for (var i=0; i<6; i+=1){
//		  instance_create_depth(x+96+(i*16),y+24+(j*16),depth-1,obj_door);}
//		j+=1;}
//	var j=0;
//	repeat(6){
//		for (var i=0; i<7; i+=1){
//		  instance_create_depth(x+88+(i*16),y+32+(j*16),depth-1,obj_door);}
//		j+=1;}

if roomormap=0 exit;
var temp=0;
for (var i=0; i < 7; i += 1) {
	for (var j=0; j<7; j+=1) {
		if !place_empty((i-96)/16,(j-24)/16,obj_lock) {
			temp=collision_point((i+96)/16,(j-24)/16,obj_door,false,true);
			ds_grid_set(hdr1_grid,i,j,temp.door1);
			ds_grid_set(hdr1_grid,i,j,temp.door2);
		}
	}
}
for (var i=0; i < 7; i += 1) {
	for (var j=0; j<7; j+=1) {
		if !place_empty((i-88)/16,(j-32)/16,obj_lock) {
			temp=collision_point((i+88)/16,(j-32)/16,obj_door,false,true);
			ds_grid_set(vdr1_grid,i,j,temp.door1);
			ds_grid_set(vdr1_grid,i,j,temp.door2);
		}
	}
}


#endregion

