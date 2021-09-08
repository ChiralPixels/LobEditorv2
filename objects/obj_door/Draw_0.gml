
if y/16=floor(y/16){
	if door1>0 draw_sprite(spr_doorshapev,door1,x,y);
	if door2>0 draw_sprite(spr_doorshapev,door2,x,y);}
else {
	if door1>0 draw_sprite(spr_doorshapeh,door1,x,y);
	if door2>0 draw_sprite(spr_doorshapeh,door2,x,y);}

if obj_controller.menubuttonx!=1 exit;
if obj_controller.roomormap=0 draw_self() else exit;