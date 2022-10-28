Avoidance = avoidance_start( musIsekaiOjisan );

red_light = make_color_rgb( 158, 53, 62 );
red_medium = make_color_rgb( 140, 30, 36 );
red_dark = make_color_rgb( 83, 2, 6 );
yellow = make_color_rgb( 212, 228, 16 );
white = c_white;
purple = make_color_rgb( 150, 0, 255 );

enum Ojisan
{
	SUDALV = 0,
	Maxim = 3700,
	BR4 = 7940
}

//avoidance_set_step(Ojisan.Maxim + 2099 );
/*Переменные*/
Number = 0;
/*Константы*/
X_CENTER = 625;
Y_CENTER = 475;
X_CAM = 0;
Y_CAM = 0;
br4p2_color1 = choose(red_light, red_medium,red_dark,yellow,purple,make_color_hsv(125, 255, 255));
br4p2_color2 = choose(red_light, red_medium,red_dark,yellow,purple,make_color_hsv(125, 255, 255));
br4p2_color3 = choose(red_light, red_medium,red_dark,yellow,purple,make_color_hsv(125, 255, 255));