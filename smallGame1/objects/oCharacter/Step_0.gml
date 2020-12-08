//Check to see if object is grounded
grounded = (place_meeting(x,y+1,Solid));
noroom = (place_meeting(x+1,y,Solid)) && (place_meeting(x-1,y,Solid))

if (global.key_interact) inFront = inFront * -1;

switch (state)
{
	case pState.free:
	{
		
			if (place_meeting(x,y,oFence)) state = pState.climb;
			climbSpeed = lerp(climbSpeed,0,0.1)
			//Movement
				var move = global.key_right - global.key_left;
				var moveVert = global.key_down - global.key_up;
	
				hsp = move * (walkSpeed + climbSpeed);
				vsp = (vsp + grvSpeed);
		
				var hsp_final = hsp + hsp_carry;		
				//Collision
				if(place_meeting(x+hsp_final,y,Solid))
				{
					while (!place_meeting(x+sign(hsp_final),y,Solid))
					{
						x += sign(hsp_final); 
					}
					hsp_final = 0;
				}
				x = x + hsp_final;
	
				if(place_meeting(x, y+vsp, Solid))
				{
					while(!place_meeting(x,y+sign(vsp),Solid))
					{
						y += sign(vsp); 
					}
					vsp = 0;
			
				}
				y = y + vsp;
			//	
	

		/*
			//if possessed object can jump
			if (global.key_jump) && (grounded)
			{
				//Jump FX
				instance_create_depth(x,y,depth+1,fxJump);
				//
				vsp = vsp - jumpHeight;
				xscale_ = 0.7;
				yscale_ = 1.3;
			}
			//
		*/
			//Animation
				if (!grounded) //Animation in the air
				{
					image_speed = 0;
		
					sprite_index = sCharacter_Air;
		
					if (vsp > 0.2) image_index = 2;
					else if (vsp < -0.2) image_index = 0;
					else image_index = 1;
				}
				else //Animations on the ground
				{
					//Land Anim
					if (sprite_index = sCharacter_Air)
					{
						instance_create_depth(x,y,depth+1,fxLand);			
						xscale_ = 1.3;
						yscale_ = 0.7;
					}
		
					image_speed = 1;
					if (hsp != 0) 
					{
						sprite_index = sCharacter_Walk;
					}
					else 
					{
						sprite_index = sCharacter_Idle;
					}
				}
		
		
			if (hsp != 0) flipped = sign(hsp);

		//if canPassThrough

		//if canDie has health

		// Squash and strech stuff
		xscale_ = lerp(xscale_,image_xscale,.2)
		yscale_ = lerp(yscale_,image_yscale,.2)
	}break;
	case pState.climb:
	{
		
		if (!place_meeting(x,y,oFence)) 
		{
			instance_create_depth(x,y,0,fxBoost);
			state = pState.free;
		}
		climbSpeed = 3;
					//Movement
				var move = global.key_right - global.key_left;
				var moveVert = global.key_down - global.key_up;
	
				hsp = move * climbSpeed;
				vsp = -1.2 * climbSpeed;
		
				var hsp_final = hsp + hsp_carry;		
				//Collision
				if(place_meeting(x+hsp_final,y,Solid))
				{
					while (!place_meeting(x+sign(hsp_final),y,Solid))
					{
						x += sign(hsp_final); 
					}
					hsp_final = 0;
				}
				x = x + hsp_final;
	
				if(place_meeting(x, y+vsp, Solid))
				{
					while(!place_meeting(x,y+sign(vsp),Solid))
					{
						y += sign(vsp); 
					}
					vsp = 0;
			
				}
				y = y + vsp;
			//	
	

		/*		
			//if possessed object can jump
			if (global.key_jump)
			{
				//Jump FX
				instance_create_depth(x,y,depth+1,fxJump);
				//
				vsp = vsp - jumpHeight;
				xscale_ = 0.7;
				yscale_ = 1.3;
				state = pState.free;
			}
			//
		*/
			//Animation
				if (!grounded) //Animation in the air
				{
					image_speed = 0;
		
					sprite_index = sCharacter_Air;
		
					if (vsp > 0.2) image_index = 2;
					else if (vsp < -0.2) image_index = 0;
					else image_index = 1;
				}
				else //Animations on the ground
				{
					//Land Anim
					if (sprite_index = sCharacter_Air)
					{
						instance_create_depth(x,y,depth+1,fxLand);			
						xscale_ = 1.3;
						yscale_ = 0.7;
					}
		
					image_speed = 1;
					if (hsp != 0) 
					{
						sprite_index = sCharacter_Walk;
					}
					else 
					{
						sprite_index = sCharacter_Idle;
					}
				}
		
		
			if (hsp != 0) flipped = sign(hsp);
 
		//if canPassThrough

		//if canDie has health

		// Squash and strech stuff
		xscale_ = lerp(xscale_,image_xscale,.2)
		yscale_ = lerp(yscale_,image_yscale,.2)
	}break;
}