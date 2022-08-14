draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(global.fonts.tutorial);

// Draws the slider title
draw_text(draw_x + (draw_w * 0.5), draw_y - 6, title);

draw_set_font(-1);
draw_set_valign(-1);
draw_set_halign(-1);

// Draws the slider
draw_sprite_stretched(spr_slider, 0, draw_x - 8, draw_y, draw_w + draw_h, draw_h);

// Draws the marker
draw_sprite(spr_slider_marker, 0, marker_x, draw_y + (draw_h * 0.5));
