room_pack_blank_object = obj_blank;

randomize();

var offset = 0;
repeat (3)
{
	var json_rooms = scr_pack1(); // generated from rooms starting with rt_
	// pick a random room name from the map:
	var name = ds_map_find_first(json_rooms);

	repeat (irandom_range(0, ds_map_size(json_rooms) - 1))
	{
	    name = ds_map_find_next(json_rooms, name);
	}
	
	// and load that:
	room_pack_load_map(json_rooms[?name],x+offset,y);
	// and when you're done:
	ds_map_destroy(json_rooms);
	
	offset += 320;
}