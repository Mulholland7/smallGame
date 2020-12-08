function scr_drawGrid() {
	var w = 1;
	draw_set_alpha(0.1)
	draw_set_color(c_white);

	for (var i = 0; i < room_height; i += 16)
	{
		draw_line_width(0,i-1,room_width,i-1,w);
	}
	for (var i = 0; i < room_width; i += 16)
	{
		draw_line_width(i-1,0,i-1,room_height,w);
	}

	draw_set_alpha(1);


}
