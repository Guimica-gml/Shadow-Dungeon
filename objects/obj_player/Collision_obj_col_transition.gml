// Creates the objects that makes the transition between rooms
with (other)
{
	if (!activated && !global.pause)
	{
		create_transition(goal, goal_x, goal_y);
		activated = true;
	}
}
