if(player_killed){
	if(keyboard_check_pressed(vk_space))
	{
		room_goto(room);
	}
}

if(room = Level_4)
{
	if(collision_line(x, y, x+800, y, O_Player, false, true))
	{
		block = instance_create_layer(x, y - 96, "Instances", O_EdgeLand);
		block.image_xscale = 25;
	}
}