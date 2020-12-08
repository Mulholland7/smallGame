hsp = dir * moveSpeed;
vsp += grav;

//Horizontal Collision
if (place_meeting(x+hsp,y,Solid))
{
		while(!place_meeting(x+sign(hsp),y,Solid))
		{
			x += sign(hsp);	
		}
		hsp = 0;
		
		dir *= -1;
}
x += hsp;

// Vertical Collision
if (place_meeting(x,y+vsp,Solid))
{
	while (!place_meeting(x,y+sign(vsp),Solid))
	{
		y += sign(vsp);	
	}
	vsp = 0;
}
y += vsp;

// Turn around if edge
dir

if (place_meeting(x


//Enemy Collision
if (place_meeting(x,y,oCharacter))
{
	// is the player above the enemy on collision?
	if (oCharacter.y < y-8)
	{
		with (oCharacter) vsp = -jumpHeight * 2;
		instance_destroy();
	}
	else
	{
		room_restart();	
	}
}















