if (get_darker)
{
	// Makes the screen darker and darker
	alpha = min(alpha + 0.04, 1.2);
	
	// If the screen is completely dark
	if (alpha > 1 && room != goal)
	{
		room_goto(goal);
	}
}
else
{
	// Makes the screen clearer and clearer
	alpha = max(alpha - 0.04, 0);
	
	// If the screen is all visible
	if (alpha <= 0)
	{
		instance_destroy();
	}
}
