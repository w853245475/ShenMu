
if(player_killed){
	if(keyboard_check_pressed(vk_space))
	{
		room_goto(room);
	}
}

if(room = Level_4)
{
	if(instance_exists(O_Player))
	{
		if(collision_line(x, y, x+800, y, O_Player, false, true))
		{
			block = instance_create_layer(x, y - 96, "Instances", O_EdgeLand);
			block.image_xscale = 25;
		}
	
		if(O_Player.x >= 2080)
		{
			O_ClimbStairFruit_Level_4_action = true;
		}
	}
}