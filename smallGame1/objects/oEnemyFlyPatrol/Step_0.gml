hsp = dir * moveSpeed;
vsp += grav;


// 
moveDuration --;
if moveDuration <= 0
	{
		dir *= -1;	
		moveDuration = 120;
	}
	x += hsp;
	y += vsp;
	
	
	//Enemy Collision
if (place_meeting(x,y,oCharacter))
{
	// is the player above the enemy on collision?
	if (oCharacter.y < y-8)
	{
		with (oCharacter) vsp = -jumpHeight;
		instance_destroy();
	}
	else
	{
		room_restart();	
	}
}