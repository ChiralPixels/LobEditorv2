
#region SELECT
//cycle through submenus and toolbars, buggy but functional
if y=48 {
	with (obj_menu_buttons) {selected=false;}
	selected=true;
	with (obj_toolbar_buttons) {selected=false;}
	obj_controller.menubuttonx=1+(x/16);
	obj_controller.menubuttony=1;
}
#endregion