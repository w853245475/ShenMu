
if (player_coming) 
{
	y+=v_speed;
	v_speed += grv;
	
	/*
	if(hitted_land)
	{
		x-=walk_speed;	
	}
	*/

	
}


if(instance_exists(O_Player))
{
	if(O_Player.x >= 1400)
	{
		
		x+=10;
		if(O_Player.y >= y)
		{
			y -= 7;	
		}
		
	}
}


if(place_meeting(x, y+v_speed, O_Land))
{
	while(!place_meeting(x, y+sign(v_speed), O_Land))
	{
		y +=sign(v_speed);
	}
	player_coming = false;
	//hitted_land = true;
	v_speed = 0;
	
}



if(distance_to_object(O_Player) <= distance_to_player)
{
	player_coming = true;
}