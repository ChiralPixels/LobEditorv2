if obj_controller.menubuttonx!=2 exit;
if keyboard_check(vk_shift) {instance_destroy(); exit;}

//if obj_controller.toolbuttony=1 and image_index>3 {image_index=1; exit;}
//if obj_controller.toolbuttony=3 and image_index=4 {image_index=3; exit;}
//if obj_controller.toolbuttony=5 and image_index>7 {image_index=7; exit;}

if image_index=9 {image_index=7; exit;}
image_index+=1;
if image_index=4 or image_index=7 image_index-=3;