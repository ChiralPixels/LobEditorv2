
if selectable=true {
	with (obj_toolbar_buttons) {selected=false;}
	selected=true;
	if x=208 obj_controller.toolbuttonx=1;
	if x=224 obj_controller.toolbuttonx=2;
	if x=240 obj_controller.toolbuttonx=3;
	obj_controller.toolbuttony=(y/16);
}