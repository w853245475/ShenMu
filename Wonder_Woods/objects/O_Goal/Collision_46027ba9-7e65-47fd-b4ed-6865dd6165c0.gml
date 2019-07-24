audio_play_sound(ReachedEnd, 10, false);
switch(room)
{
	case Level_1:
		room_goto(Level_2);
		break;
		
	case Level_2:
		room_goto(Level_4);
		break;
		/*
	case Level_3:
		room_goto(Level_4);
		break;
		
	case Level_4:
		room_goto(Level_5);
		break;
		*/
	
}
