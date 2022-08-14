var sep = 20;
var height = view_hport[0] - sep;
var width = view_wport[0] - sep;
var startx = sep;
var starty = view_hport[0] - sep - 50;
var amount = (hp / max_hp) * 100;

draw_healthbar(startx, starty, width, height, amount, c_black, c_red, c_blue, false, true, true);
