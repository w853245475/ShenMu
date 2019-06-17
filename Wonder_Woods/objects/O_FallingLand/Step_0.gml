if(touched_player == true)
{
	y+=10;
}


if(collision_line(x, y, x+290, y, O_Player, false, true))
{
	touched_player = true;	
}