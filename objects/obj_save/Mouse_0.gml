image_index=1;

// %localappdata%\LobEditor
// Eventually we'll use this to differentiate between rooms.
var data_id=0; 

// Get all the grids.
var room_grids = [
	obj_controller.obj_grid, 
	obj_controller.dir_grid
	]
var map_grids = [
	obj_controller.shape_grid, 
	obj_controller.rot_grid, 
	obj_controller.chall_grid, 
	obj_controller.trig_grid,
	obj_controller.lock_grid, 
	obj_controller.lockdir_grid, 
	obj_controller.hdr1_grid, 
	obj_controller.vdr1_grid
	];
	
var grids;
var name;
if (obj_controller.roomormap == 1) {
	grids = room_grids;
	name = "room";
}
else {
	grids = map_grids;
	name = "map";
}
	

// Creates a file for the room
var local_datapath = name + "s" + "\\" + + name + "_" + string(data_id) + ".txt"
file = file_text_open_write( working_directory + local_datapath);

// This works under the assumption that all room grids are of this dimension.
var gridCount = array_length(grids);
var width = 7;
var height = 7;

// Initialize an empty string
var string_data = "";

for (var n = 0; n < gridCount; n++){
	for (var i = 0; i < width; i++) {
	    for (var j = 0; j < height; j++) {
	        string_data += string(ds_grid_get(room_grids[n], i, j));
			string_data += ","
	    }
		string_data += "\n"
	}
	string_data += "\\"
}

// show_debug_message(string_data);
file_text_write_string(file, string_data);
file_text_close(file);

