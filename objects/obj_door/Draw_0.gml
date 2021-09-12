//highlight door area under cursor
if obj_controller.menubuttonx!=1 exit;
if obj_controller.roomormap=0 draw_sprite(sprite_index,image_index,x,y);
//draw doors
if y/16=floor(y/16){
	if door1>0 draw_sprite_ext(spr_doorshapev,door1,x,y,1,1,0,c_grey,1);
	if door2>0 draw_sprite_ext(spr_doorshapev,door2,x,y,1,1,0,c_grey,1);}
else {
	if door1>0 draw_sprite_ext(spr_doorshapeh,door1,x,y,1,1,0,c_grey,1);
	if door2>0 draw_sprite_ext(spr_doorshapeh,door2,x,y,1,1,0,c_grey,1);}

