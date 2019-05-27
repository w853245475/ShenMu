
if (player_coming) 
{
	y+=v_speed;
	v_speed += grv;
	
	if(hitted_land)
	{
		x-=walk_speed;	
	}

	
}
if(place_meeting(x, y+v_speed, O_Land))
{
	while(!place_meeting(x, y+sign(v_speed), O_Land))
	{
		y +=sign(v_speed);
	}
	hitted_land = true;
	v_speed = jump_magnitude;
}



if(distance_to_object(O_Player) <= distance_to_player)
{
	player_coming = true;
}