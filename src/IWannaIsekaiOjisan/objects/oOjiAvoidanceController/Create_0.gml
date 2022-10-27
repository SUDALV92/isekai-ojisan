Avoidance = avoidance_start( musIsekaiOjisan );

//1. 0 - 3700
//2. 3700 - 7940
//3. 7940

red_light = make_color_rgb( 158, 53, 62 );
yellow = make_color_rgb( 212, 228, 16 );
/*
Светло красный: 9E353E = 158, 53, 62
Средне красный: 8C1E24
Тёмно красный: 530206
Жёлтый: D4E410
*/

enum Ojisan
{
	SUDALV = 0,
	Maxim = 3700,
	BR4 = 7940
}	

avoidance_set_step(Ojisan.SUDALV);

/*Константы*/
X_CENTER = 625;
Y_CENTER = 475;
X_CAM = 0;
Y_CAM = 0;