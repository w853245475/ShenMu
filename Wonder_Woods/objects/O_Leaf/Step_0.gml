if(action)
{
	i+=1;
	y=i+cos(i/10)*10+initialY;
	x=sin(i/20)*50+initialX;
}
if(distance_to_object(O_Player)<=200)
{
	action = true;
}