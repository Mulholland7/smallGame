/// @description Camera set up
cam = view_camera[0];
follow = oCharacter;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;


x = clamp(x,view_w_half,room_width-view_w_half);
y = clamp(y,view_h_half,room_height-view_h_half);




xTo = follow.xstart;
yTo = follow.ystart; 

//Minor bug camera snaps 
//camera_set_view_target(cam,oPlayer);


shake_length = 60;
shake_magnitude = 0;
shake_remain = 0;


