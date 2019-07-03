if(touched_player == true)
{
	y+=10;
}


if(collision_line(x, y-1, x+sprite_width, y-1, O_Player, false, true))
{
	touched_player = true;	
}
