
if sprite_index=spr_placeholder or y=64 {} else draw=true;

#region SELECTED
if y=64 and collision_point(x,48,object_index,true,false).selected=true draw_self();
var i=x;
var j=0;
with (obj_menu_buttons) {if x=i and selected=true j=1;}
if j=1 and y=64 draw_self();

if draw=true draw_self();
if selected=true draw_sprite(spr_selected,0,x,y);
#endregion