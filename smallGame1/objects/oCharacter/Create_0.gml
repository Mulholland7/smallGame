hsp = 0;
vsp = 0;
hsp_carry = 0;
walkSpeed = 3.5;
climbSpeed = 0;
grvSpeed = 0.1;
jumpHeight = 4;


falling = false;
fallStun = 0;

beingCarried = false;

//Draw
flipped = 1;
xscale_ = image_xscale;
yscale_ = image_yscale;

inFront = true;

//Array for all the sprites

//FX
animationNumber = 0;

state = pState.free;

enum pState
{
	free,
	climb,
}