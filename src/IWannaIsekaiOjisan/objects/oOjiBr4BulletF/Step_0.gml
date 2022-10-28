instance_inbounds_check();
direction += curv;

if(mode == 1 && abs(curv < 0.7)) {
	curv *= (1 + abs(curv));
}