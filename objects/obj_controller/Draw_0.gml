//draw walls if in room mode
if roomormap=1 {
	draw_sprite(spr_walls,0,80,16)
	draw_sprite_ext(spr_walls,0,192,16,1,1,-90,c_white,1);
	draw_sprite_ext(spr_walls,0,192,128,1,1,-180,c_white,1);
	draw_sprite_ext(spr_walls,0,80,128,1,1,-270,c_white,1);
}