
if x=208 and y=16 {
	sprite_index=spr_toolbar;
	if collision_line(0,48,0,127,obj_menu_buttons,true,true).selected=true image_index=0;
	if collision_line(16,48,16,127,obj_menu_buttons,true,true).selected=true image_index=1;
	if collision_line(32,48,32,127,obj_menu_buttons,true,true).selected=true image_index=2;
	if collision_line(48,48,48,127,obj_menu_buttons,true,true).selected=true image_index=3;
	
	var i=0;
	with(obj_menu_buttons) {if selected=true i=1;}
	if i=1 draw=true;
	
	if obj_controller.roomormap=1 image_index+=4;
}
