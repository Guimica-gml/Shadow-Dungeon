draw_set_valign(fa_center);
draw_set_halign(fa_middle);
draw_set_font(global.fonts.tutorial);

draw_text(320, 64,
	"Welcome to Shadow Dungeon's tutorial\n" +
	"You can move using "+chr(global.key_up)+chr(global.key_left)+chr(global.key_down)+chr(global.key_right)+"\n" +
	"and attack using the mouse\n" +
	"Go to the room bellow to start"
);

draw_text(145, 325,
	"You can pick guns pressing\n" +
	"the letter '"+ chr(global.key_interact) +"'. And can drop them\n" + 
	"using the letter '" + chr(global.key_throw) + "'. When you \n" +
	"take damage the level\n" +
	"of your gun increases"
);

draw_text(500, 325,
	"You can find guns in chests.\n" +
	"When you have no ammunition\n" +
	"press '" + chr(global.key_reload) + "' to reload"
);

draw_text(850, 350,
	"You can find 3 different\n" +
	"items that you can use.\n" +
	"When you pick an item the\n" +
	"level of your gun drops\n" +
	"(cartridge is the exception)\n" +
	"remember that."
);

draw_set_font(-1);
draw_set_valign(-1);
draw_set_halign(-1);
