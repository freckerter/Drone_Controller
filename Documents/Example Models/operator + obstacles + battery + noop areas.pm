mdp

formula goal = (x_pos = 70 & y_pos = 30 & z_pos = 30);

const int max_x = 100;
const int max_y = 100;
const int max_z = 100;

module position

	step:[1..3] init 1;
	x_pos:[0..100] init 3;
	y_pos:[0..100] init 3;
	z_pos:[0..100] init 3;

	[change_pos] (step = 1) & (x_pos + 1 < max_x) -> (x_pos' = x_pos + 1) & (step' = 2);
	[change_pos] (step = 1) & (y_pos + 1 < max_x) -> (y_pos' = y_pos + 1) & (step' = 2);
	[change_pos] (step = 1) & (z_pos + 1 < max_x) -> (z_pos' = z_pos + 1) & (step' = 2);

	[change_pos] (step = 1) & (x_pos - 1 >= 0) -> (x_pos' = x_pos - 1) & (step' = 2);
	[change_pos] (step = 1) & (y_pos - 1 >= 0) -> (y_pos' = y_pos - 1) & (step' = 2);
	[change_pos] (step = 1) & (z_pos - 1 >= 0) -> (z_pos' = z_pos - 1) & (step' = 2);

	[check] (step = 2) -> (step' = 3);
	[check_noop] (step = 2) -> (step' = 3);

	//need to check every noops here, can use different values for different fields then
	[noop] (step = 3) & (noops > 1) -> true;
	[noop] (step = 3) & (noops <= 1) -> (step' = 1);
endmodule


const int obj_1_min_x = 10;
const int obj_1_min_y = 10;
const int obj_1_min_z = 10;
const int obj_1_max_x = 20;
const int obj_1_max_y = 20;
const int obj_1_max_z = 20;

module obj_1

	[check] !((x_pos >= obj_1_min_x) & (y_pos >= obj_1_min_y) & (z_pos >= obj_1_min_z) & (x_pos <= obj_1_max_x) & (y_pos <= obj_1_max_y) & (z_pos <= obj_1_max_z)) -> true;
	[check_noop] !((x_pos >= obj_1_min_x) & (y_pos >= obj_1_min_y) & (z_pos >= obj_1_min_z) & (x_pos <= obj_1_max_x) & (y_pos <= obj_1_max_y) & (z_pos <= obj_1_max_z)) -> true;

endmodule

const int noop_area_1_min_x = 5;
const int noop_area_1_min_y = 1;
const int noop_area_1_min_z = 1;
const int noop_area_1_max_x = 7;
const int noop_area_1_max_y = 5;
const int noop_area_1_max_z = 5;

module noop_area_1
	noops:[0..5] init 0; //might need to rename to noops_1 of multiple noop areas exist
	

	[check] !((x_pos >= noop_area_1_min_x) & (y_pos >= noop_area_1_min_y) & (z_pos >= noop_area_1_min_z) & (x_pos <= noop_area_1_max_x) & (y_pos <= noop_area_1_max_y) & (z_pos <= noop_area_1_max_z)) -> true; //outside noop area
	[check_noop] ((x_pos >= noop_area_1_min_x) & (y_pos >= noop_area_1_min_y) & (z_pos >= noop_area_1_min_z) & (x_pos <= noop_area_1_max_x) & (y_pos <= noop_area_1_max_y) & (z_pos <= noop_area_1_max_z)) -> (noops' = 5); //inside noop area
	

	[noop] (step = 3) & (noops > 0) -> (noops' = noops - 1);
	[noop] (step = 3) & (noops = 0) -> true;
endmodule

module battery

	battery_state:[0..60] init 60; //+-1 errors here, battery = 0 => can still move and reach goal, before goal is reached.

	[noop] (battery_state > 0) -> (battery_state' = battery_state - 1);

endmodule




















