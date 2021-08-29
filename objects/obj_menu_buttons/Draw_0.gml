
if sprite_index=spr_placeholder or y=64 {} else draw=true;
//yeah yeah, i know...


if draw=true draw_self();
if selected=true draw_sprite(spr_selected,0,x,y);

#region SELECTED
if y=64 and collision_point(x,48,object_index,true,false).selected=true draw_self();
#endregion