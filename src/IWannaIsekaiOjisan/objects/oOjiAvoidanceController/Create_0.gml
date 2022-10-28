Avoidance = avoidance_start( musIsekaiOjisan );

//1. 0 - 3700
//2. 3700 - 7940
//3. 7940

red_light = make_color_rgb( 158, 53, 62 );
red_medium = make_color_rgb( 140, 30, 36 );
red_dark = make_color_rgb( 83, 2, 6 );
yellow = make_color_rgb( 212, 228, 16 );

enum Ojisan
{
	SUDALV = 0,
	Maxim = 3700,
	BR4 = 7940
}	

avoidance_set_step(Ojisan.Maxim);

/*Переменные*/
Number = 0;
/*Константы*/
X_CENTER = 625;
Y_CENTER = 475;
X_CAM = 0;
Y_CAM = 0;