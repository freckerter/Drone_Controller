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

