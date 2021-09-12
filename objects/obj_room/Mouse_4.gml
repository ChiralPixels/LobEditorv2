if obj_controller.menubuttonx>1 exit;
if obj_controller.menubuttony>2 exit;
if start=0 {
	if obj_controller.toolbuttonx=0 and obj_controller.toolbuttony=0 image_index+=1;
	if obj_controller.toolbuttonx=1 and obj_controller.toolbuttony=1 image_index=0;
	if obj_controller.toolbuttonx=2 and obj_controller.toolbuttony=1 image_index=1;
	if obj_controller.toolbuttonx=3 and obj_controller.toolbuttony=1 image_index=2;
	if obj_controller.toolbuttonx=1 and obj_controller.toolbuttony=2 image_index=3;
	if obj_controller.toolbuttonx=2 and obj_controller.toolbuttony=2 image_index=4;
	if obj_controller.toolbuttonx=3 and obj_controller.toolbuttony=2 image_index=5;
	if obj_controller.toolbuttonx=1 and obj_controller.toolbuttony=3 image_index=6;
	if obj_controller.toolbuttonx=2 and obj_controller.toolbuttony=3 image_index=7;
	if obj_controller.toolbuttonx=3 and obj_controller.toolbuttony=3 image_index=8;
}
if image_index=0 rot=0;

if keyboard_check(vk_shift) instance_destroy();