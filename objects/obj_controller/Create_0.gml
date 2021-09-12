#region UI SETUP
//roomormap is used to swap between the two modes
roomormap=1;		//1=room; 0=map
//(the menu and tool variables hold the x and y coordinates of the currently selected ui elements)
menubuttonx=0;
menubuttony=0;
toolbuttonx=0;
toolbuttony=0;
//create door buttons
//(these fill the spaces between rooms and are clicked to add doors)
var j=0;
repeat(7){
	for (var i=0; i<6; i+=1){
	  instance_create_depth(x+96+(i*16),y+24+(j*16),depth-1,obj_door);}
	j+=1;}
var j=0;
repeat(6){
	for (var i=0; i<7; i+=1){
	  instance_create_depth(x+88+(i*16),y+32+(j*16),depth-1,obj_door);}
	j+=1;}
#endregion

#region ROOM EDITOR DATA
//dungeon room grids
obj_grid = ds_grid_create(7,7);			//what room object is on what tile in the room
dir_grid = ds_grid_create(7,7);			//which direction the object on the tile is rotated
#endregion

#region MAP EDITOR DATA
//map grids
//(these are used in the map editor mode and need to hold more information)
shape_grid = ds_grid_create(7,7);		//holds the room shape of each space in the dungeon
rot_grid = ds_grid_create(7,7);			//rotation of each room shape
chall_grid = ds_grid_create(7,7);		//challenge type/level (combat/danger/puzzle)
trig_grid = ds_grid_create(7,7);		//something in this room is used in a locked room
lock_grid = ds_grid_create(7,7);		//which trigger is used to unlock this room
lockdir_grid = ds_grid_create(7,7);		//which direction is locked (if two doors, lock the first)
//door grids
//(split into vertical and horizontal grids, with extra grids for additional exits)
vdr1_grid = ds_grid_create(7,7);		//vertical doors
hdr1_grid = ds_grid_create(7,7);		//horizontal doors (Hodor!)
vdr2_grid = ds_grid_create(7,7);		//additional vertical doors
hdr2_grid = ds_grid_create(7,7);		//additional horizontal doors
//special rooms
enterx=0;								//x location of starting room
entery=0;								//y location of starting room
bossx=0;								//x location of boss room
bossy=0;								//y location of boss room
#endregion
