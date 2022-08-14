draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_font(global.fonts.title);

draw_text(view_wport[0] * 0.5, view_hport[0] * 0.5 - 180, text);

draw_set_font(global.fonts.GUI);

draw_text(view_wport[0] * 0.5, view_hport[0] * 0.5 + 60, subtitle);

draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);
