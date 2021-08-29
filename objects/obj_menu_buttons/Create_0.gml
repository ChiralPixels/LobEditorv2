
#region SETTINGS
//setting up the starting variables						//room edit=0; map edit=1
selected=false;
draw=false;
image_index=4;											//this is a bugfix: shows wrong icons otherwise!
#endregion

#region GRAPHICS
//you probably won't need to read any of this
image_speed=0;
if y=48 and x=0 sprite_index=spr_mainmenu;
if y=64 {
	sprite_index=spr_submenus;
	if x=16 image_index=1;
	if x=32 image_index=2;
	if x=48 image_index=3;
}
#endregion
