
if (player_coming) 
{
	y+=v_speed;
	v_speed += grv;
	
	if(first_hit)
	{
		if(jump_count == 1)
		{
			x-=walk_speed;
		}
		else if(jump_count == 2)
		{

			x += 14;	
			//v_speed = 0;
			//jump_count++;
		}
	}

	
}
if(place_meeting(x, y+v_speed, O_Land))
{
	while(!place_meeting(x, y+sign(v_speed), O_Land))
	{
		y +=sign(v_speed);
	}
	jump_count++;
	first_hit = true;
	if(jump_count < 3)
	{
		v_speed = jump_magnitude;
	}
	else
	{
		v_speed = 0;	
	}
}



if(distance_to_object(O_Player) <= distance_to_player)
{
	player_coming = true;
}