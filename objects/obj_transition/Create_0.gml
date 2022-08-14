// Unpauses the game if it is paused
if (global.pause)
{
	pause_toggle();
}

// Disallow instance's movement
global.player_can_move = false;
with (par_enemy)
{
	stop = true;
}

// The position to transport the player to
goal_x = -1;
goal_y = -1;

// The room to make a transition to
goal = noone;

get_darker = true; // If the screen needs to get darker or to make it clearer
alpha = 0;         // The transparency of the transition rect
