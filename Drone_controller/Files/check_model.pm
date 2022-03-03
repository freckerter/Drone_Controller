mdp

formula goal = (x_pos = 70 & y_pos = 42 & z_pos = 2);

const int max_x = 76;
const int max_y = 53;
const int max_z = 29;

module position

    step:[1..2] init 1;

    x_pos:[0..76] init 3;
    y_pos:[0..53] init 40;
    z_pos:[0..29] init 2;
    
    [change_pos] (step = 1) & (x_pos + 1 < max_x) -> (x_pos' = x_pos + 1) & (step' = 2);
    [change_pos] (step = 1) & (y_pos + 1 < max_y) -> (y_pos' = y_pos + 1) & (step' = 2);
    [change_pos] (step = 1) & (z_pos + 1 < max_z) -> (z_pos' = z_pos + 1) & (step' = 2);
    
    [change_pos] (step = 1) & (x_pos - 1 >= 0) -> (x_pos' = x_pos - 1) & (step' = 2);
    [change_pos] (step = 1) & (y_pos - 1 >= 0) -> (y_pos' = y_pos - 1) & (step' = 2);
    [change_pos] (step = 1) & (z_pos - 1 >= 0) -> (z_pos' = z_pos - 1) & (step' = 2);
    
    [check] (step = 2) -> (step' = 1);
    
endmodule
    
    
const int obj_0_min_x = 24;
const int obj_0_min_y = 5;
const int obj_0_min_z = -1;
const int obj_0_max_x = 38;
const int obj_0_max_y = 30;
const int obj_0_max_z = 11;

module obj_0
[check] !((x_pos >= obj_0_min_x) & (y_pos >= obj_0_min_y) & (z_pos >= obj_0_min_z) & (x_pos <= obj_0_max_x) & (y_pos <= obj_0_max_y) & (z_pos <= obj_0_max_z)) -> true;
endmodule

const int obj_1_min_x = 24;
const int obj_1_min_y = 5;
const int obj_1_min_z = -1;
const int obj_1_max_x = 38;
const int obj_1_max_y = 50;
const int obj_1_max_z = 11;

module obj_1
[check] !((x_pos >= obj_1_min_x) & (y_pos >= obj_1_min_y) & (z_pos >= obj_1_min_z) & (x_pos <= obj_1_max_x) & (y_pos <= obj_1_max_y) & (z_pos <= obj_1_max_z)) -> true;
endmodule

const int obj_2_min_x = 24;
const int obj_2_min_y = 25;
const int obj_2_min_z = -1;
const int obj_2_max_x = 38;
const int obj_2_max_y = 50;
const int obj_2_max_z = 11;

module obj_2
[check] !((x_pos >= obj_2_min_x) & (y_pos >= obj_2_min_y) & (z_pos >= obj_2_min_z) & (x_pos <= obj_2_max_x) & (y_pos <= obj_2_max_y) & (z_pos <= obj_2_max_z)) -> true;
endmodule

const int obj_3_min_x = 24;
const int obj_3_min_y = 15;
const int obj_3_min_z = 4;
const int obj_3_max_x = 48;
const int obj_3_max_y = 40;
const int obj_3_max_z = 16;

module obj_3
[check] !((x_pos >= obj_3_min_x) & (y_pos >= obj_3_min_y) & (z_pos >= obj_3_min_z) & (x_pos <= obj_3_max_x) & (y_pos <= obj_3_max_y) & (z_pos <= obj_3_max_z)) -> true;
endmodule

const int obj_4_min_x = 34;
const int obj_4_min_y = 5;
const int obj_4_min_z = -1;
const int obj_4_max_x = 48;
const int obj_4_max_y = 50;
const int obj_4_max_z = 11;

module obj_4
[check] !((x_pos >= obj_4_min_x) & (y_pos >= obj_4_min_y) & (z_pos >= obj_4_min_z) & (x_pos <= obj_4_max_x) & (y_pos <= obj_4_max_y) & (z_pos <= obj_4_max_z)) -> true;
endmodule

const int obj_5_min_x = 34;
const int obj_5_min_y = 25;
const int obj_5_min_z = 4;
const int obj_5_max_x = 48;
const int obj_5_max_y = 50;
const int obj_5_max_z = 16;

module obj_5
[check] !((x_pos >= obj_5_min_x) & (y_pos >= obj_5_min_y) & (z_pos >= obj_5_min_z) & (x_pos <= obj_5_max_x) & (y_pos <= obj_5_max_y) & (z_pos <= obj_5_max_z)) -> true;
endmodule

const int obj_6_min_x = 44;
const int obj_6_min_y = 5;
const int obj_6_min_z = 4;
const int obj_6_max_x = 58;
const int obj_6_max_y = 30;
const int obj_6_max_z = 16;

module obj_6
[check] !((x_pos >= obj_6_min_x) & (y_pos >= obj_6_min_y) & (z_pos >= obj_6_min_z) & (x_pos <= obj_6_max_x) & (y_pos <= obj_6_max_y) & (z_pos <= obj_6_max_z)) -> true;
endmodule

const int obj_7_min_x = 44;
const int obj_7_min_y = 25;
const int obj_7_min_z = -1;
const int obj_7_max_x = 58;
const int obj_7_max_y = 50;
const int obj_7_max_z = 11;

module obj_7
[check] !((x_pos >= obj_7_min_x) & (y_pos >= obj_7_min_y) & (z_pos >= obj_7_min_z) & (x_pos <= obj_7_max_x) & (y_pos <= obj_7_max_y) & (z_pos <= obj_7_max_z)) -> true;
endmodule

const int obj_8_min_x = 54;
const int obj_8_min_y = 5;
const int obj_8_min_z = 4;
const int obj_8_max_x = 68;
const int obj_8_max_y = 30;
const int obj_8_max_z = 11;

module obj_8
[check] !((x_pos >= obj_8_min_x) & (y_pos >= obj_8_min_y) & (z_pos >= obj_8_min_z) & (x_pos <= obj_8_max_x) & (y_pos <= obj_8_max_y) & (z_pos <= obj_8_max_z)) -> true;
endmodule

const int obj_9_min_x = 54;
const int obj_9_min_y = 25;
const int obj_9_min_z = -1;
const int obj_9_max_x = 68;
const int obj_9_max_y = 50;
const int obj_9_max_z = 11;

module obj_9
[check] !((x_pos >= obj_9_min_x) & (y_pos >= obj_9_min_y) & (z_pos >= obj_9_min_z) & (x_pos <= obj_9_max_x) & (y_pos <= obj_9_max_y) & (z_pos <= obj_9_max_z)) -> true;
endmodule

const int obj_10_min_x = 34;
const int obj_10_min_y = 5;
const int obj_10_min_z = -1;
const int obj_10_max_x = 58;
const int obj_10_max_y = 20;
const int obj_10_max_z = 6;

module obj_10
[check] !((x_pos >= obj_10_min_x) & (y_pos >= obj_10_min_y) & (z_pos >= obj_10_min_z) & (x_pos <= obj_10_max_x) & (y_pos <= obj_10_max_y) & (z_pos <= obj_10_max_z)) -> true;
endmodule

const int obj_11_min_x = 54;
const int obj_11_min_y = 15;
const int obj_11_min_z = -1;
const int obj_11_max_x = 68;
const int obj_11_max_y = 40;
const int obj_11_max_z = 6;

module obj_11
[check] !((x_pos >= obj_11_min_x) & (y_pos >= obj_11_min_y) & (z_pos >= obj_11_min_z) & (x_pos <= obj_11_max_x) & (y_pos <= obj_11_max_y) & (z_pos <= obj_11_max_z)) -> true;
endmodule

const int obj_12_min_x = 44;
const int obj_12_min_y = 25;
const int obj_12_min_z = 14;
const int obj_12_max_x = 58;
const int obj_12_max_y = 50;
const int obj_12_max_z = 21;

module obj_12
[check] !((x_pos >= obj_12_min_x) & (y_pos >= obj_12_min_y) & (z_pos >= obj_12_min_z) & (x_pos <= obj_12_max_x) & (y_pos <= obj_12_max_y) & (z_pos <= obj_12_max_z)) -> true;
endmodule

const int obj_13_min_x = 54;
const int obj_13_min_y = 25;
const int obj_13_min_z = 14;
const int obj_13_max_x = 68;
const int obj_13_max_y = 50;
const int obj_13_max_z = 21;

module obj_13
[check] !((x_pos >= obj_13_min_x) & (y_pos >= obj_13_min_y) & (z_pos >= obj_13_min_z) & (x_pos <= obj_13_max_x) & (y_pos <= obj_13_max_y) & (z_pos <= obj_13_max_z)) -> true;
endmodule

const int obj_14_min_x = 44;
const int obj_14_min_y = 25;
const int obj_14_min_z = 19;
const int obj_14_max_x = 58;
const int obj_14_max_y = 50;
const int obj_14_max_z = 26;

module obj_14
[check] !((x_pos >= obj_14_min_x) & (y_pos >= obj_14_min_y) & (z_pos >= obj_14_min_z) & (x_pos <= obj_14_max_x) & (y_pos <= obj_14_max_y) & (z_pos <= obj_14_max_z)) -> true;
endmodule

const int obj_15_min_x = 54;
const int obj_15_min_y = 25;
const int obj_15_min_z = 19;
const int obj_15_max_x = 68;
const int obj_15_max_y = 50;
const int obj_15_max_z = 26;

module obj_15
[check] !((x_pos >= obj_15_min_x) & (y_pos >= obj_15_min_y) & (z_pos >= obj_15_min_z) & (x_pos <= obj_15_max_x) & (y_pos <= obj_15_max_y) & (z_pos <= obj_15_max_z)) -> true;
endmodule

const int obj_16_min_x = 54;
const int obj_16_min_y = -95;
const int obj_16_min_z = -1;
const int obj_16_max_x = 68;
const int obj_16_max_y = -70;
const int obj_16_max_z = 11;

module obj_16
[check] !((x_pos >= obj_16_min_x) & (y_pos >= obj_16_min_y) & (z_pos >= obj_16_min_z) & (x_pos <= obj_16_max_x) & (y_pos <= obj_16_max_y) & (z_pos <= obj_16_max_z)) -> true;
endmodule

const int obj_17_min_x = 44;
const int obj_17_min_y = -95;
const int obj_17_min_z = -1;
const int obj_17_max_x = 68;
const int obj_17_max_y = -70;
const int obj_17_max_z = 11;

module obj_17
[check] !((x_pos >= obj_17_min_x) & (y_pos >= obj_17_min_y) & (z_pos >= obj_17_min_z) & (x_pos <= obj_17_max_x) & (y_pos <= obj_17_max_y) & (z_pos <= obj_17_max_z)) -> true;
endmodule

const int obj_18_min_x = 44;
const int obj_18_min_y = -95;
const int obj_18_min_z = -1;
const int obj_18_max_x = 58;
const int obj_18_max_y = -70;
const int obj_18_max_z = 11;

module obj_18
[check] !((x_pos >= obj_18_min_x) & (y_pos >= obj_18_min_y) & (z_pos >= obj_18_min_z) & (x_pos <= obj_18_max_x) & (y_pos <= obj_18_max_y) & (z_pos <= obj_18_max_z)) -> true;
endmodule

const int obj_19_min_x = 44;
const int obj_19_min_y = -95;
const int obj_19_min_z = 4;
const int obj_19_max_x = 68;
const int obj_19_max_y = -70;
const int obj_19_max_z = 16;

module obj_19
[check] !((x_pos >= obj_19_min_x) & (y_pos >= obj_19_min_y) & (z_pos >= obj_19_min_z) & (x_pos <= obj_19_max_x) & (y_pos <= obj_19_max_y) & (z_pos <= obj_19_max_z)) -> true;
endmodule

const int obj_20_min_x = 44;
const int obj_20_min_y = -95;
const int obj_20_min_z = 9;
const int obj_20_max_x = 68;
const int obj_20_max_y = -70;
const int obj_20_max_z = 16;

module obj_20
[check] !((x_pos >= obj_20_min_x) & (y_pos >= obj_20_min_y) & (z_pos >= obj_20_min_z) & (x_pos <= obj_20_max_x) & (y_pos <= obj_20_max_y) & (z_pos <= obj_20_max_z)) -> true;
endmodule

const int obj_21_min_x = 14;
const int obj_21_min_y = -85;
const int obj_21_min_z = -1;
const int obj_21_max_x = 58;
const int obj_21_max_y = -20;
const int obj_21_max_z = 16;

module obj_21
[check] !((x_pos >= obj_21_min_x) & (y_pos >= obj_21_min_y) & (z_pos >= obj_21_min_z) & (x_pos <= obj_21_max_x) & (y_pos <= obj_21_max_y) & (z_pos <= obj_21_max_z)) -> true;
endmodule

const int obj_22_min_x = 14;
const int obj_22_min_y = -35;
const int obj_22_min_z = 4;
const int obj_22_max_x = 28;
const int obj_22_max_y = -20;
const int obj_22_max_z = 21;

module obj_22
[check] !((x_pos >= obj_22_min_x) & (y_pos >= obj_22_min_y) & (z_pos >= obj_22_min_z) & (x_pos <= obj_22_max_x) & (y_pos <= obj_22_max_y) & (z_pos <= obj_22_max_z)) -> true;
endmodule

const int obj_23_min_x = 14;
const int obj_23_min_y = -45;
const int obj_23_min_z = -1;
const int obj_23_max_x = 28;
const int obj_23_max_y = -30;
const int obj_23_max_z = 16;

module obj_23
[check] !((x_pos >= obj_23_min_x) & (y_pos >= obj_23_min_y) & (z_pos >= obj_23_min_z) & (x_pos <= obj_23_max_x) & (y_pos <= obj_23_max_y) & (z_pos <= obj_23_max_z)) -> true;
endmodule

const int obj_24_min_x = 14;
const int obj_24_min_y = -45;
const int obj_24_min_z = -1;
const int obj_24_max_x = 38;
const int obj_24_max_y = -20;
const int obj_24_max_z = 21;

module obj_24
[check] !((x_pos >= obj_24_min_x) & (y_pos >= obj_24_min_y) & (z_pos >= obj_24_min_z) & (x_pos <= obj_24_max_x) & (y_pos <= obj_24_max_y) & (z_pos <= obj_24_max_z)) -> true;
endmodule

const int obj_25_min_x = 24;
const int obj_25_min_y = -35;
const int obj_25_min_z = 4;
const int obj_25_max_x = 38;
const int obj_25_max_y = -20;
const int obj_25_max_z = 21;

module obj_25
[check] !((x_pos >= obj_25_min_x) & (y_pos >= obj_25_min_y) & (z_pos >= obj_25_min_z) & (x_pos <= obj_25_max_x) & (y_pos <= obj_25_max_y) & (z_pos <= obj_25_max_z)) -> true;
endmodule

const int obj_26_min_x = 24;
const int obj_26_min_y = -45;
const int obj_26_min_z = -1;
const int obj_26_max_x = 38;
const int obj_26_max_y = -30;
const int obj_26_max_z = 16;

module obj_26
[check] !((x_pos >= obj_26_min_x) & (y_pos >= obj_26_min_y) & (z_pos >= obj_26_min_z) & (x_pos <= obj_26_max_x) & (y_pos <= obj_26_max_y) & (z_pos <= obj_26_max_z)) -> true;
endmodule

const int obj_27_min_x = 14;
const int obj_27_min_y = -45;
const int obj_27_min_z = 14;
const int obj_27_max_x = 38;
const int obj_27_max_y = -20;
const int obj_27_max_z = 26;

module obj_27
[check] !((x_pos >= obj_27_min_x) & (y_pos >= obj_27_min_y) & (z_pos >= obj_27_min_z) & (x_pos <= obj_27_max_x) & (y_pos <= obj_27_max_y) & (z_pos <= obj_27_max_z)) -> true;
endmodule

const int obj_28_min_x = 14;
const int obj_28_min_y = -45;
const int obj_28_min_z = 19;
const int obj_28_max_x = 38;
const int obj_28_max_y = -20;
const int obj_28_max_z = 26;

module obj_28
[check] !((x_pos >= obj_28_min_x) & (y_pos >= obj_28_min_y) & (z_pos >= obj_28_min_z) & (x_pos <= obj_28_max_x) & (y_pos <= obj_28_max_y) & (z_pos <= obj_28_max_z)) -> true;
endmodule

const int obj_29_min_x = 24;
const int obj_29_min_y = -45;
const int obj_29_min_z = 9;
const int obj_29_max_x = 38;
const int obj_29_max_y = 30;
const int obj_29_max_z = 26;

module obj_29
[check] !((x_pos >= obj_29_min_x) & (y_pos >= obj_29_min_y) & (z_pos >= obj_29_min_z) & (x_pos <= obj_29_max_x) & (y_pos <= obj_29_max_y) & (z_pos <= obj_29_max_z)) -> true;
endmodule

const int obj_30_min_x = 24;
const int obj_30_min_y = 5;
const int obj_30_min_z = 9;
const int obj_30_max_x = 38;
const int obj_30_max_y = 50;
const int obj_30_max_z = 16;

module obj_30
[check] !((x_pos >= obj_30_min_x) & (y_pos >= obj_30_min_y) & (z_pos >= obj_30_min_z) & (x_pos <= obj_30_max_x) & (y_pos <= obj_30_max_y) & (z_pos <= obj_30_max_z)) -> true;
endmodule

const int obj_31_min_x = 24;
const int obj_31_min_y = 5;
const int obj_31_min_z = 9;
const int obj_31_max_x = 48;
const int obj_31_max_y = 40;
const int obj_31_max_z = 16;

module obj_31
[check] !((x_pos >= obj_31_min_x) & (y_pos >= obj_31_min_y) & (z_pos >= obj_31_min_z) & (x_pos <= obj_31_max_x) & (y_pos <= obj_31_max_y) & (z_pos <= obj_31_max_z)) -> true;
endmodule

const int obj_32_min_x = 34;
const int obj_32_min_y = 5;
const int obj_32_min_z = 9;
const int obj_32_max_x = 58;
const int obj_32_max_y = 50;
const int obj_32_max_z = 16;

module obj_32
[check] !((x_pos >= obj_32_min_x) & (y_pos >= obj_32_min_y) & (z_pos >= obj_32_min_z) & (x_pos <= obj_32_max_x) & (y_pos <= obj_32_max_y) & (z_pos <= obj_32_max_z)) -> true;
endmodule

const int obj_33_min_x = 44;
const int obj_33_min_y = 15;
const int obj_33_min_z = 9;
const int obj_33_max_x = 68;
const int obj_33_max_y = 50;
const int obj_33_max_z = 16;

module obj_33
[check] !((x_pos >= obj_33_min_x) & (y_pos >= obj_33_min_y) & (z_pos >= obj_33_min_z) & (x_pos <= obj_33_max_x) & (y_pos <= obj_33_max_y) & (z_pos <= obj_33_max_z)) -> true;
endmodule

const int obj_34_min_x = 54;
const int obj_34_min_y = 5;
const int obj_34_min_z = 9;
const int obj_34_max_x = 68;
const int obj_34_max_y = 50;
const int obj_34_max_z = 16;

module obj_34
[check] !((x_pos >= obj_34_min_x) & (y_pos >= obj_34_min_y) & (z_pos >= obj_34_min_z) & (x_pos <= obj_34_max_x) & (y_pos <= obj_34_max_y) & (z_pos <= obj_34_max_z)) -> true;
endmodule

const int obj_35_min_x = 54;
const int obj_35_min_y = 25;
const int obj_35_min_z = 9;
const int obj_35_max_x = 68;
const int obj_35_max_y = 40;
const int obj_35_max_z = 16;

module obj_35
[check] !((x_pos >= obj_35_min_x) & (y_pos >= obj_35_min_y) & (z_pos >= obj_35_min_z) & (x_pos <= obj_35_max_x) & (y_pos <= obj_35_max_y) & (z_pos <= obj_35_max_z)) -> true;
endmodule

const int obj_36_min_x = 46;
const int obj_36_min_y = 47;
const int obj_36_min_z = 0;
const int obj_36_max_x = 56;
const int obj_36_max_y = 55;
const int obj_36_max_z = 24;

module obj_36
[check] !((x_pos >= obj_36_min_x) & (y_pos >= obj_36_min_y) & (z_pos >= obj_36_min_z) & (x_pos <= obj_36_max_x) & (y_pos <= obj_36_max_y) & (z_pos <= obj_36_max_z)) -> true;
endmodule

const pathlength = 86;
const path_0_x = 3;
const path_0_y = 41;
const path_0_z = 2;
const path_1_x = 3;
const path_1_y = 42;
const path_1_z = 2;
const path_2_x = 3;
const path_2_y = 43;
const path_2_z = 2;
const path_3_x = 3;
const path_3_y = 44;
const path_3_z = 2;
const path_4_x = 3;
const path_4_y = 45;
const path_4_z = 2;
const path_5_x = 3;
const path_5_y = 46;
const path_5_z = 2;
const path_6_x = 3;
const path_6_y = 47;
const path_6_z = 2;
const path_7_x = 3;
const path_7_y = 48;
const path_7_z = 2;
const path_8_x = 3;
const path_8_y = 49;
const path_8_z = 2;
const path_9_x = 3;
const path_9_y = 50;
const path_9_z = 2;
const path_10_x = 3;
const path_10_y = 51;
const path_10_z = 2;
const path_11_x = 4;
const path_11_y = 51;
const path_11_z = 2;
const path_12_x = 5;
const path_12_y = 51;
const path_12_z = 2;
const path_13_x = 6;
const path_13_y = 51;
const path_13_z = 2;
const path_14_x = 7;
const path_14_y = 51;
const path_14_z = 2;
const path_15_x = 8;
const path_15_y = 51;
const path_15_z = 2;
const path_16_x = 9;
const path_16_y = 51;
const path_16_z = 2;
const path_17_x = 10;
const path_17_y = 51;
const path_17_z = 2;
const path_18_x = 11;
const path_18_y = 51;
const path_18_z = 2;
const path_19_x = 12;
const path_19_y = 51;
const path_19_z = 2;
const path_20_x = 13;
const path_20_y = 51;
const path_20_z = 2;
const path_21_x = 14;
const path_21_y = 51;
const path_21_z = 2;
const path_22_x = 15;
const path_22_y = 51;
const path_22_z = 2;
const path_23_x = 16;
const path_23_y = 51;
const path_23_z = 2;
const path_24_x = 17;
const path_24_y = 51;
const path_24_z = 2;
const path_25_x = 18;
const path_25_y = 51;
const path_25_z = 2;
const path_26_x = 19;
const path_26_y = 51;
const path_26_z = 2;
const path_27_x = 20;
const path_27_y = 51;
const path_27_z = 2;
const path_28_x = 21;
const path_28_y = 51;
const path_28_z = 2;
const path_29_x = 22;
const path_29_y = 51;
const path_29_z = 2;
const path_30_x = 23;
const path_30_y = 51;
const path_30_z = 2;
const path_31_x = 24;
const path_31_y = 51;
const path_31_z = 2;
const path_32_x = 25;
const path_32_y = 51;
const path_32_z = 2;
const path_33_x = 26;
const path_33_y = 51;
const path_33_z = 2;
const path_34_x = 27;
const path_34_y = 51;
const path_34_z = 2;
const path_35_x = 28;
const path_35_y = 51;
const path_35_z = 2;
const path_36_x = 29;
const path_36_y = 51;
const path_36_z = 2;
const path_37_x = 30;
const path_37_y = 51;
const path_37_z = 2;
const path_38_x = 31;
const path_38_y = 51;
const path_38_z = 2;
const path_39_x = 32;
const path_39_y = 51;
const path_39_z = 2;
const path_40_x = 33;
const path_40_y = 51;
const path_40_z = 2;
const path_41_x = 34;
const path_41_y = 51;
const path_41_z = 2;
const path_42_x = 35;
const path_42_y = 51;
const path_42_z = 2;
const path_43_x = 36;
const path_43_y = 51;
const path_43_z = 2;
const path_44_x = 37;
const path_44_y = 51;
const path_44_z = 2;
const path_45_x = 38;
const path_45_y = 51;
const path_45_z = 2;
const path_46_x = 39;
const path_46_y = 51;
const path_46_z = 2;
const path_47_x = 40;
const path_47_y = 51;
const path_47_z = 2;
const path_48_x = 41;
const path_48_y = 51;
const path_48_z = 2;
const path_49_x = 42;
const path_49_y = 51;
const path_49_z = 2;
const path_50_x = 43;
const path_50_y = 51;
const path_50_z = 2;
const path_51_x = 44;
const path_51_y = 51;
const path_51_z = 2;
const path_52_x = 45;
const path_52_y = 51;
const path_52_z = 2;
const path_53_x = 46;
const path_53_y = 51;
const path_53_z = 2;
const path_54_x = 47;
const path_54_y = 51;
const path_54_z = 2;
const path_55_x = 48;
const path_55_y = 51;
const path_55_z = 2;
const path_56_x = 49;
const path_56_y = 51;
const path_56_z = 2;
const path_57_x = 50;
const path_57_y = 51;
const path_57_z = 2;
const path_58_x = 51;
const path_58_y = 51;
const path_58_z = 2;
const path_59_x = 52;
const path_59_y = 51;
const path_59_z = 2;
const path_60_x = 53;
const path_60_y = 51;
const path_60_z = 2;
const path_61_x = 54;
const path_61_y = 51;
const path_61_z = 2;
const path_62_x = 55;
const path_62_y = 51;
const path_62_z = 2;
const path_63_x = 56;
const path_63_y = 51;
const path_63_z = 2;
const path_64_x = 57;
const path_64_y = 51;
const path_64_z = 2;
const path_65_x = 58;
const path_65_y = 51;
const path_65_z = 2;
const path_66_x = 59;
const path_66_y = 51;
const path_66_z = 2;
const path_67_x = 60;
const path_67_y = 51;
const path_67_z = 2;
const path_68_x = 61;
const path_68_y = 51;
const path_68_z = 2;
const path_69_x = 62;
const path_69_y = 51;
const path_69_z = 2;
const path_70_x = 63;
const path_70_y = 51;
const path_70_z = 2;
const path_71_x = 64;
const path_71_y = 51;
const path_71_z = 2;
const path_72_x = 65;
const path_72_y = 51;
const path_72_z = 2;
const path_73_x = 66;
const path_73_y = 51;
const path_73_z = 2;
const path_74_x = 67;
const path_74_y = 51;
const path_74_z = 2;
const path_75_x = 68;
const path_75_y = 51;
const path_75_z = 2;
const path_76_x = 69;
const path_76_y = 51;
const path_76_z = 2;
const path_77_x = 69;
const path_77_y = 50;
const path_77_z = 2;
const path_78_x = 69;
const path_78_y = 49;
const path_78_z = 2;
const path_79_x = 69;
const path_79_y = 48;
const path_79_z = 2;
const path_80_x = 69;
const path_80_y = 47;
const path_80_z = 2;
const path_81_x = 69;
const path_81_y = 46;
const path_81_z = 2;
const path_82_x = 69;
const path_82_y = 45;
const path_82_z = 2;
const path_83_x = 69;
const path_83_y = 44;
const path_83_z = 2;
const path_84_x = 69;
const path_84_y = 43;
const path_84_z = 2;
const path_85_x = 69;
const path_85_y = 42;
const path_85_z = 2;

module path

    point:[0..86] init 0;
    
    [check] ((point < pathlength) & 
    ( (point = 0 & x_pos = path_0_x &  y_pos = path_0_y &  z_pos = path_0_z)
    | (point = 1 & x_pos = path_1_x &  y_pos = path_1_y &  z_pos = path_1_z)
    | (point = 2 & x_pos = path_2_x &  y_pos = path_2_y &  z_pos = path_2_z)
    | (point = 3 & x_pos = path_3_x &  y_pos = path_3_y &  z_pos = path_3_z)
    | (point = 4 & x_pos = path_4_x &  y_pos = path_4_y &  z_pos = path_4_z)
    | (point = 5 & x_pos = path_5_x &  y_pos = path_5_y &  z_pos = path_5_z)
    | (point = 6 & x_pos = path_6_x &  y_pos = path_6_y &  z_pos = path_6_z)
    | (point = 7 & x_pos = path_7_x &  y_pos = path_7_y &  z_pos = path_7_z)
    | (point = 8 & x_pos = path_8_x &  y_pos = path_8_y &  z_pos = path_8_z)
    | (point = 9 & x_pos = path_9_x &  y_pos = path_9_y &  z_pos = path_9_z)
    | (point = 10 & x_pos = path_10_x &  y_pos = path_10_y &  z_pos = path_10_z)
    | (point = 11 & x_pos = path_11_x &  y_pos = path_11_y &  z_pos = path_11_z)
    | (point = 12 & x_pos = path_12_x &  y_pos = path_12_y &  z_pos = path_12_z)
    | (point = 13 & x_pos = path_13_x &  y_pos = path_13_y &  z_pos = path_13_z)
    | (point = 14 & x_pos = path_14_x &  y_pos = path_14_y &  z_pos = path_14_z)
    | (point = 15 & x_pos = path_15_x &  y_pos = path_15_y &  z_pos = path_15_z)
    | (point = 16 & x_pos = path_16_x &  y_pos = path_16_y &  z_pos = path_16_z)
    | (point = 17 & x_pos = path_17_x &  y_pos = path_17_y &  z_pos = path_17_z)
    | (point = 18 & x_pos = path_18_x &  y_pos = path_18_y &  z_pos = path_18_z)
    | (point = 19 & x_pos = path_19_x &  y_pos = path_19_y &  z_pos = path_19_z)
    | (point = 20 & x_pos = path_20_x &  y_pos = path_20_y &  z_pos = path_20_z)
    | (point = 21 & x_pos = path_21_x &  y_pos = path_21_y &  z_pos = path_21_z)
    | (point = 22 & x_pos = path_22_x &  y_pos = path_22_y &  z_pos = path_22_z)
    | (point = 23 & x_pos = path_23_x &  y_pos = path_23_y &  z_pos = path_23_z)
    | (point = 24 & x_pos = path_24_x &  y_pos = path_24_y &  z_pos = path_24_z)
    | (point = 25 & x_pos = path_25_x &  y_pos = path_25_y &  z_pos = path_25_z)
    | (point = 26 & x_pos = path_26_x &  y_pos = path_26_y &  z_pos = path_26_z)
    | (point = 27 & x_pos = path_27_x &  y_pos = path_27_y &  z_pos = path_27_z)
    | (point = 28 & x_pos = path_28_x &  y_pos = path_28_y &  z_pos = path_28_z)
    | (point = 29 & x_pos = path_29_x &  y_pos = path_29_y &  z_pos = path_29_z)
    | (point = 30 & x_pos = path_30_x &  y_pos = path_30_y &  z_pos = path_30_z)
    | (point = 31 & x_pos = path_31_x &  y_pos = path_31_y &  z_pos = path_31_z)
    | (point = 32 & x_pos = path_32_x &  y_pos = path_32_y &  z_pos = path_32_z)
    | (point = 33 & x_pos = path_33_x &  y_pos = path_33_y &  z_pos = path_33_z)
    | (point = 34 & x_pos = path_34_x &  y_pos = path_34_y &  z_pos = path_34_z)
    | (point = 35 & x_pos = path_35_x &  y_pos = path_35_y &  z_pos = path_35_z)
    | (point = 36 & x_pos = path_36_x &  y_pos = path_36_y &  z_pos = path_36_z)
    | (point = 37 & x_pos = path_37_x &  y_pos = path_37_y &  z_pos = path_37_z)
    | (point = 38 & x_pos = path_38_x &  y_pos = path_38_y &  z_pos = path_38_z)
    | (point = 39 & x_pos = path_39_x &  y_pos = path_39_y &  z_pos = path_39_z)
    | (point = 40 & x_pos = path_40_x &  y_pos = path_40_y &  z_pos = path_40_z)
    | (point = 41 & x_pos = path_41_x &  y_pos = path_41_y &  z_pos = path_41_z)
    | (point = 42 & x_pos = path_42_x &  y_pos = path_42_y &  z_pos = path_42_z)
    | (point = 43 & x_pos = path_43_x &  y_pos = path_43_y &  z_pos = path_43_z)
    | (point = 44 & x_pos = path_44_x &  y_pos = path_44_y &  z_pos = path_44_z)
    | (point = 45 & x_pos = path_45_x &  y_pos = path_45_y &  z_pos = path_45_z)
    | (point = 46 & x_pos = path_46_x &  y_pos = path_46_y &  z_pos = path_46_z)
    | (point = 47 & x_pos = path_47_x &  y_pos = path_47_y &  z_pos = path_47_z)
    | (point = 48 & x_pos = path_48_x &  y_pos = path_48_y &  z_pos = path_48_z)
    | (point = 49 & x_pos = path_49_x &  y_pos = path_49_y &  z_pos = path_49_z)
    | (point = 50 & x_pos = path_50_x &  y_pos = path_50_y &  z_pos = path_50_z)
    | (point = 51 & x_pos = path_51_x &  y_pos = path_51_y &  z_pos = path_51_z)
    | (point = 52 & x_pos = path_52_x &  y_pos = path_52_y &  z_pos = path_52_z)
    | (point = 53 & x_pos = path_53_x &  y_pos = path_53_y &  z_pos = path_53_z)
    | (point = 54 & x_pos = path_54_x &  y_pos = path_54_y &  z_pos = path_54_z)
    | (point = 55 & x_pos = path_55_x &  y_pos = path_55_y &  z_pos = path_55_z)
    | (point = 56 & x_pos = path_56_x &  y_pos = path_56_y &  z_pos = path_56_z)
    | (point = 57 & x_pos = path_57_x &  y_pos = path_57_y &  z_pos = path_57_z)
    | (point = 58 & x_pos = path_58_x &  y_pos = path_58_y &  z_pos = path_58_z)
    | (point = 59 & x_pos = path_59_x &  y_pos = path_59_y &  z_pos = path_59_z)
    | (point = 60 & x_pos = path_60_x &  y_pos = path_60_y &  z_pos = path_60_z)
    | (point = 61 & x_pos = path_61_x &  y_pos = path_61_y &  z_pos = path_61_z)
    | (point = 62 & x_pos = path_62_x &  y_pos = path_62_y &  z_pos = path_62_z)
    | (point = 63 & x_pos = path_63_x &  y_pos = path_63_y &  z_pos = path_63_z)
    | (point = 64 & x_pos = path_64_x &  y_pos = path_64_y &  z_pos = path_64_z)
    | (point = 65 & x_pos = path_65_x &  y_pos = path_65_y &  z_pos = path_65_z)
    | (point = 66 & x_pos = path_66_x &  y_pos = path_66_y &  z_pos = path_66_z)
    | (point = 67 & x_pos = path_67_x &  y_pos = path_67_y &  z_pos = path_67_z)
    | (point = 68 & x_pos = path_68_x &  y_pos = path_68_y &  z_pos = path_68_z)
    | (point = 69 & x_pos = path_69_x &  y_pos = path_69_y &  z_pos = path_69_z)
    | (point = 70 & x_pos = path_70_x &  y_pos = path_70_y &  z_pos = path_70_z)
    | (point = 71 & x_pos = path_71_x &  y_pos = path_71_y &  z_pos = path_71_z)
    | (point = 72 & x_pos = path_72_x &  y_pos = path_72_y &  z_pos = path_72_z)
    | (point = 73 & x_pos = path_73_x &  y_pos = path_73_y &  z_pos = path_73_z)
    | (point = 74 & x_pos = path_74_x &  y_pos = path_74_y &  z_pos = path_74_z)
    | (point = 75 & x_pos = path_75_x &  y_pos = path_75_y &  z_pos = path_75_z)
    | (point = 76 & x_pos = path_76_x &  y_pos = path_76_y &  z_pos = path_76_z)
    | (point = 77 & x_pos = path_77_x &  y_pos = path_77_y &  z_pos = path_77_z)
    | (point = 78 & x_pos = path_78_x &  y_pos = path_78_y &  z_pos = path_78_z)
    | (point = 79 & x_pos = path_79_x &  y_pos = path_79_y &  z_pos = path_79_z)
    | (point = 80 & x_pos = path_80_x &  y_pos = path_80_y &  z_pos = path_80_z)
    | (point = 81 & x_pos = path_81_x &  y_pos = path_81_y &  z_pos = path_81_z)
    | (point = 82 & x_pos = path_82_x &  y_pos = path_82_y &  z_pos = path_82_z)
    | (point = 83 & x_pos = path_83_x &  y_pos = path_83_y &  z_pos = path_83_z)
    | (point = 84 & x_pos = path_84_x &  y_pos = path_84_y &  z_pos = path_84_z)
    | (point = 85 & x_pos = path_85_x &  y_pos = path_85_y &  z_pos = path_85_z)
        )) -> (point' = point + 1);
    
endmodule
