
if x=208 and y=16 {
	sprite_index=spr_toolbar;
	if collision_point(0,48,obj_menu_buttons,true,true).selected=true image_index=0;
	if collision_point(16,48,obj_menu_buttons,true,true).selected=true image_index=1;
	if collision_point(32,48,obj_menu_buttons,true,true).selected=true image_index=2;
	if collision_point(48,48,obj_menu_buttons,true,true).selected=true image_index=3;
	
	if collision_point(0,48,obj_menu_buttons,true,true).selected +
	collision_point(16,48,obj_menu_buttons,true,true).selected +
	collision_point(32,48,obj_menu_buttons,true,true).selected +
	collision_point(48,48,obj_menu_buttons,true,true).selected > 0 draw=true;
	
	if obj_controller.roomormap=1 image_index+=4;
}
