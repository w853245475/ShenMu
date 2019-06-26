

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up);




var move = key_right - key_left;

if(place_meeting(x, y+1, O_Land))
{
	jump_times = jump_max;
}

if(key_right)
{
	if(key_jump)
	{
		sprite_index = S_Jump	
	}
	else
	{
		//if(v_speed == 0)
		//{
			sprite_index = S_Running;
			image_xscale = -1;	
			image_speed = 0.3;
		//}
	}
}

if(keyboard_check_released(vk_right))
{
	//if(v_speed == 0)
	//{
		sprite_index = S_Player;	
	//}
}

if(key_left)
{
	if(key_jump)
	{
		sprite_index = S_Jump	
	}
	else
	{
		
		//if(v_speed == 0)
		//{
			sprite_index = S_Running;
			image_xscale = 1;	
			image_speed = 0.3;
		//}
	}
}

if(keyboard_check_released(vk_left))
{
	//if(v_speed==0)
	//{
		sprite_index = S_Player;	
	//}
}



/*
if (key_jump) 
{
	v_speed = jump_magnitude;	
}
*/
if (key_jump) && (jump_times>0)
{
	//show_debug_message(jump_times);
	
	if(jump_times == 2)
	{
		sprite_index = S_Jump;	
	}
	else if(jump_times == 1)
	{
		sprite_index = S_SecondJump;	
	}
	jump_times-=1;
	v_speed = jump_magnitude;	
}

if(v_speed == -0.1)
{
	sprite_index = S_Fall;	
}


h_speed = move * walk_speed;
v_speed += grv


/*
//X Collision
if(place_meeting(x+h_speed, y, O_Land))
{
	while(!place_meeting(x+sign(h_speed), y, O_Land))
	{
		x +=sign(h_speed);
	}
	
	h_speed = 0;
}

//x+=h_speed;

//Y Collision
if(place_meeting(x, y+v_speed, O_Land))
{
	while(!place_meeting(x, y+sign(v_speed), O_Land))
	{
		y +=sign(v_speed);
	}
	
	v_speed = 0;
}
*/

if(h_speed == 0 && v_speed == 0)
{
	sprite_index = S_Player;	
}

/*
y+=v_speed;
show_debug_message(v_speed);