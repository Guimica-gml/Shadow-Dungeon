draw_set_alpha(0.5);
var c = hover ? c_ltgray : c_black;
draw_rectangle_color(draw_x, draw_y, draw_x + draw_w, draw_y + draw_h, c, c, c, c, false);
draw_set_alpha(1);

draw_rectangle(draw_x, draw_y, draw_x + draw_w, draw_y + draw_h, true);

draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_font(global.fonts.GUI);

draw_text(draw_x + (draw_w * 0.5), draw_y + (draw_h * 0.5), text);

draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);
