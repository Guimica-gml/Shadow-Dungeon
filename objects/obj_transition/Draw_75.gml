// Draws a black rectangle on the screen
draw_set_alpha(alpha);
var c = c_black;
draw_rectangle_color(-1, -1, view_wport[0], view_hport[0], c, c, c, c, false);
draw_set_alpha(1);
