if(place_meeting(x, y+v_speed, O_Land))
{
	while(!place_meeting(x, y+sign(v_speed), O_Land))
	{
		y +=sign(v_speed);
	}
	hitted_land = true;
	v_speed = jump_magnitude;
}

if (O_GameManager.O_ClimbStairFruit_Level_4_action) 
{
	y+=v_speed;
	v_speed += grv;
	
	if(hitted_land)
	{
		x-=walk_speed;	
	}

	
}