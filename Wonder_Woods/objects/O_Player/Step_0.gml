key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check(vk_space) || keyboard_check(vk_up);

var move = key_right - key_left;

h_speed = move * walk_speed;
v_speed += grv

if(place_meeting(x, y+1, O_Land)) && (key_jump)
{
	v_speed = jump_magnitude;	
}



//X Collision
if(place_meeting(x+h_speed, y, O_Land))
{
	while(!place_meeting(x+sign(h_speed), y, O_Land))
	{
		x +=sign(h_speed);
	}
	
	h_speed = 0;
}

x+=h_speed;

//Y Collision
if(place_meeting(x, y+v_speed, O_Land))
{
	while(!place_meeting(x, y+sign(v_speed), O_Land))
	{
		y +=sign(v_speed);
	}
	
	v_speed = 0;
}

y+=v_speed;
