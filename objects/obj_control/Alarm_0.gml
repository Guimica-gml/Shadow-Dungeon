/// @description Game Over
if (global.pause)
{
	pause_toggle();
	
	if (pause_title != noone)
	{
		instance_destroy(pause_title);
		pause_title = noone;
	}
}

// Go to rm_gameover
create_transition(rm_gameover, -1, -1);
