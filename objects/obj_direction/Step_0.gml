if set=true exit;
if point_direction(mx,my,mouse_x,mouse_y)<45 {image_index=0;exit;}
if point_direction(mx,my,mouse_x,mouse_y)<135 {image_index=1;exit;}
if point_direction(mx,my,mouse_x,mouse_y)<225 {image_index=2;exit;}
if point_direction(mx,my,mouse_x,mouse_y)<315 {image_index=3;exit;}
if point_direction(mx,my,mouse_x,mouse_y)<315 {image_index=3;exit;}
if point_direction(mx,my,mouse_x,mouse_y)>=315 {image_index=0;exit;}