vspeed += m_gravity;

if(keyboard_check(vk_left))
{
	move_contact_solid(90, m_step);
	move_contact_solid(180, m_speed);
	move_contact_solid(270, m_step);
	//image_xscale = 1;
}

if(keyboard_check(vk_right))
{
	move_contact_solid(90, m_step);
	move_contact_solid(0, m_speed);
	move_contact_solid(270, m_step);
	//image_xscale = -1;
}