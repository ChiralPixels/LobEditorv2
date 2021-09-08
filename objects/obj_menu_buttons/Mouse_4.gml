
#region SELECT

if y=48 {
	with (obj_menu_buttons) {selected=false;}
	selected=true;
	with (obj_toolbar_buttons) {selected=false;}
	obj_controller.menubuttonx=1+(x/16);
	obj_controller.menubuttony=1;
	var i=x;
	var j=0;
	with(obj_menu_buttons) {if i=x and selected=true j=1;}
	if j=1 selected=true;
}

if y=64 {
	with (obj_menu_buttons) {selected=false;}
	selected=true;
	with (obj_toolbar_buttons) {selected=false;}
	obj_controller.menubuttonx=1+(x/16);
	obj_controller.menubuttony=2;
}

if y=80 {
	with (obj_menu_buttons) {selected=false;}
	selected=true;
	with (obj_toolbar_buttons) {selected=false;}
	obj_controller.menubuttonx=1+(x/16);
	obj_controller.menubuttony=3;
}

if y=96 {
	with (obj_menu_buttons) {selected=false;}
	selected=true;
	with (obj_toolbar_buttons) {selected=false;}
	obj_controller.menubuttonx=1+(x/16);
	obj_controller.menubuttony=4;
}

if y=112 {
	with (obj_menu_buttons) {selected=false;}
	selected=true;
	with (obj_toolbar_buttons) {selected=false;}
	obj_controller.menubuttonx=1+(x/16);
	obj_controller.menubuttony=5;
}
#endregion