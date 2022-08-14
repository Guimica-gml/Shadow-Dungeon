draw_set_valign(fa_center);
draw_set_halign(fa_middle);
draw_set_font(global.fonts.tutorial);

draw_text(320, 64,
	"Bem vindo ao tutorial de Shadow Dungeon \n" +
	"Você pode se mover com "+chr(global.key_up)+","+chr(global.key_left)+","+chr(global.key_down)+","+chr(global.key_right)+" e " +
	"atacar com o mouse \n" +
	"Vá para a sala a baixo para começar"
);

draw_text(145, 325,
	"Você pode pegar armas usando \na letra '"+ chr(global.key_interact) +"'. " +
	"E pode soltá-las \nusando a letra '" + chr(global.key_throw) + "'. " + 
	"Quando você \nleva dano o level da sua arma sobe"
);

draw_text(500, 325,
	"Você poderá achar armas em baús. \n" +
	"Quando estiver com \npouca munição aperte \n" +
	"'" + chr(global.key_reload) + "' para recarregar"
);

draw_text(850, 350,
	"Nesse jogo você pode \nencontrar " +
	"três itens \ndiferentes, " +
	"que poderá usar \nem alguns momentos. \n" +
	"Quando você pega um item \no level da " +
	"arma cai em um \n(menos o cartucho), \n" +
	"lembre-se disso."
);

draw_set_font(-1);
draw_set_valign(-1);
draw_set_halign(-1);
