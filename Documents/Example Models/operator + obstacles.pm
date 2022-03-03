mdp

formula goal = (x_pos = 10 & y_pos = 3 & z_pos = 3);

const int max_x = 100;
const int max_y = 100;
const int max_z = 100;

module position

	step:[1..2] init 1;
	x_pos:[0..100] init 3;
	y_pos:[0..100] init 3;
	z_pos:[0..100] init 3;

	[change_pos] (step = 1) & (x_pos + 1 < max_x) -> (x_pos' = x_pos + 1) & (step' = 2);
	[change_pos] (step = 1) & (y_pos + 1 < max_x) -> (y_pos' = y_pos + 1) & (step' = 2);
	[change_pos] (step = 1) & (z_pos + 1 < max_x) -> (z_pos' = z_pos + 1) & (step' = 2);

	[change_pos] (step = 1) & (x_pos - 1 >= 0) -> (x_pos' = x_pos - 1) & (step' = 2);
	[change_pos] (step = 1) & (y_pos - 1 >= 0) -> (y_pos' = y_pos - 1) & (step' = 2);
	[change_pos] (step = 1) & (z_pos - 1 >= 0) -> (z_pos' = z_pos - 1) & (step' = 2);

	[check] (step = 2) -> (step' = 1);

endmodule


const int obj_1_min_x = 10;
const int obj_1_min_y = 10;
const int obj_1_min_z = 10;
const int obj_1_max_x = 20;
const int obj_1_max_y = 20;
const int obj_1_max_z = 20;

module obj_1

	[check] !((x_pos >= obj_1_min_x) & (y_pos >= obj_1_min_y) & (z_pos >= obj_1_min_z) & (x_pos <= obj_1_max_x) & (y_pos <= obj_1_max_y) & (z_pos <= obj_1_max_z)) -> true;

endmodule














