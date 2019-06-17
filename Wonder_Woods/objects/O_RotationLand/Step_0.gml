if(instance_exists(O_Player))
{
	if(collision_line(x, y, x+290, y+changeinY, O_Player, false, true))
	{
		instance_destroy(O_Player);	
	}
}

image_angle-=1;
changeinY+=6;
