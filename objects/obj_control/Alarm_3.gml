/// @description Timer
if (!global.pause)
{
	second += 1;
	if (second > 59)
	{
		second = 0;
		minute++;
	}
	if (minute > 59)
	{
		minute = 0;
		hour++;
	}
}

if (global.room_type == "playable_room")
{
	alarm[3] = 60;
}
