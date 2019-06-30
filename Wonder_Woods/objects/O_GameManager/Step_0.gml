if(player_killed){
	if(keyboard_check_pressed(vk_space))
	{
		room_goto(room);
	}
}

if(room = Level_4)
{
	if(collision_line(x, y+120, x+800, y+120, O_Player, false, true))
	{
		image_alpha = 1;
		instance_activate_object(self);
	}
}