if obj_controller.menubuttonx!=1 exit;
if keyboard_check(vk_shift)=true {door1=0; door2=0; exit;}
if obj_controller.roomormap=0 door2-=1;
if door2<0 then door2=9;