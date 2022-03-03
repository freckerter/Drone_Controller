from example_input import ExampleInput
from grid_graph import GridGraph


def create_pm(GridGraph):
    file = open("./Files/model.pm", "w")

    file.write("mdp\n")
    file.write("\n")
    file.write("formula goal = (x_pos = " + str(int(GridGraph.PRISM_x_goal)) + " & y_pos = " + str(
        int(GridGraph.PRISM_y_goal)) + " & z_pos = " + str(int(GridGraph.PRISM_z_goal)) + ");\n")
    file.write("\n")
    file.write("const int max_x = " + str(int(GridGraph.PRISM_width)) + ";\n")
    file.write("const int max_y = " + str(int(GridGraph.PRISM_depth)) + ";\n")
    file.write("const int max_z = " + str(int(GridGraph.PRISM_height)) + ";\n")
    file.write("\n")
    file.write("module position\n")
    file.write("\n")
    file.write("    step:[1..2] init 1;\n")
    file.write("\n")
    file.write(
        "    x_pos:[0.." + str(int(GridGraph.PRISM_width)) + "] init " + str(int(GridGraph.PRISM_x_start)) + ";\n")
    file.write(
        "    y_pos:[0.." + str(int(GridGraph.PRISM_depth)) + "] init " + str(int(GridGraph.PRISM_y_start)) + ";\n")
    file.write(
        "    z_pos:[0.." + str(int(GridGraph.PRISM_height)) + "] init " + str(int(GridGraph.PRISM_z_start)) + ";\n")
    file.write("    \n")
    file.write("    [change_pos] (step = 1) & (x_pos + 1 < max_x) -> (x_pos' = x_pos + 1) & (step' = 2);\n")
    file.write("    [change_pos] (step = 1) & (y_pos + 1 < max_y) -> (y_pos' = y_pos + 1) & (step' = 2);\n")
    file.write("    [change_pos] (step = 1) & (z_pos + 1 < max_z) -> (z_pos' = z_pos + 1) & (step' = 2);\n")
    file.write("    \n")
    file.write("    [change_pos] (step = 1) & (x_pos - 1 >= 0) -> (x_pos' = x_pos - 1) & (step' = 2);\n")
    file.write("    [change_pos] (step = 1) & (y_pos - 1 >= 0) -> (y_pos' = y_pos - 1) & (step' = 2);\n")
    file.write("    [change_pos] (step = 1) & (z_pos - 1 >= 0) -> (z_pos' = z_pos - 1) & (step' = 2);\n")
    file.write("    \n")
    file.write("    [check] (step = 2) -> (step' = 1);\n")
    file.write("    \n")
    file.write("endmodule\n")
    file.write("    \n")
    file.write("    \n")

    for i in range(GridGraph.get_object_count()):
        file.write("const int obj_" + str(int(i)) + "_min_x = " + str(int(GridGraph.objects[i].x_min)) + ";\n")
        file.write("const int obj_" + str(int(i)) + "_min_y = " + str(int(GridGraph.objects[i].y_min)) + ";\n")
        file.write("const int obj_" + str(int(i)) + "_min_z = " + str(int(GridGraph.objects[i].z_min)) + ";\n")
        file.write("const int obj_" + str(int(i)) + "_max_x = " + str(int(GridGraph.objects[i].x_max)) + ";\n")
        file.write("const int obj_" + str(int(i)) + "_max_y = " + str(int(GridGraph.objects[i].y_max)) + ";\n")
        file.write("const int obj_" + str(int(i)) + "_max_z = " + str(int(GridGraph.objects[i].z_max)) + ";\n")
        file.write("\n")
        file.write("module obj_" + str(int(i)) + "\n")
        file.write("[check] !((x_pos >= obj_" + str(int(i)) + "_min_x) & (y_pos >= obj_" + str(
            int(i)) + "_min_y) & (z_pos >= obj_" + str(int(i)) + "_min_z) & (x_pos <= obj_" + str(
            int(i)) + "_max_x) & (y_pos <= obj_" + str(int(i)) + "_max_y) & (z_pos <= obj_" + str(
            int(i)) + "_max_z)) -> true;\n")
        file.write("endmodule\n")
        file.write("\n")

    return


def create_check_pm(path, GridGraph):
    if (len(path) > 0):
        x_start = path[0][0]
        y_start = path[0][1]
        z_start = path[0][2]
    else:
        x_start = GridGraph.PRISM_x_goal
        y_start = GridGraph.PRISM_y_goal
        z_start = GridGraph.PRISM_z_goal

    file = open("./Files/check_model.pm", "w")  #

    file.write("mdp\n")
    file.write("\n")
    file.write("formula goal = (x_pos = " + str(int(GridGraph.PRISM_x_goal)) + " & y_pos = " + str(
        int(GridGraph.PRISM_y_goal)) + " & z_pos = " + str(int(GridGraph.PRISM_z_goal)) + ");\n")
    file.write("\n")
    file.write("const int max_x = " + str(int(GridGraph.PRISM_width)) + ";\n")
    file.write("const int max_y = " + str(int(GridGraph.PRISM_depth)) + ";\n")
    file.write("const int max_z = " + str(int(GridGraph.PRISM_height)) + ";\n")
    file.write("\n")
    file.write("module position\n")
    file.write("\n")
    file.write("    step:[1..2] init 1;\n")
    file.write("\n")
    file.write("    x_pos:[0.." + str(int(GridGraph.PRISM_width)) + "] init " + str(int(x_start)) + ";\n")
    file.write("    y_pos:[0.." + str(int(GridGraph.PRISM_depth)) + "] init " + str(int(y_start)) + ";\n")
    file.write("    z_pos:[0.." + str(int(GridGraph.PRISM_height)) + "] init " + str(int(z_start)) + ";\n")
    file.write("    \n")
    file.write("    [change_pos] (step = 1) & (x_pos + 1 < max_x) -> (x_pos' = x_pos + 1) & (step' = 2);\n")
    file.write("    [change_pos] (step = 1) & (y_pos + 1 < max_y) -> (y_pos' = y_pos + 1) & (step' = 2);\n")
    file.write("    [change_pos] (step = 1) & (z_pos + 1 < max_z) -> (z_pos' = z_pos + 1) & (step' = 2);\n")
    file.write("    \n")
    file.write("    [change_pos] (step = 1) & (x_pos - 1 >= 0) -> (x_pos' = x_pos - 1) & (step' = 2);\n")
    file.write("    [change_pos] (step = 1) & (y_pos - 1 >= 0) -> (y_pos' = y_pos - 1) & (step' = 2);\n")
    file.write("    [change_pos] (step = 1) & (z_pos - 1 >= 0) -> (z_pos' = z_pos - 1) & (step' = 2);\n")
    file.write("    \n")
    file.write("    [check] (step = 2) -> (step' = 1);\n")
    file.write("    \n")
    file.write("endmodule\n")
    file.write("    \n")
    file.write("    \n")

    for i in range(GridGraph.get_object_count()):
        file.write("const int obj_" + str(int(i)) + "_min_x = " + str(int(GridGraph.objects[i].x_min)) + ";\n")
        file.write("const int obj_" + str(int(i)) + "_min_y = " + str(int(GridGraph.objects[i].y_min)) + ";\n")
        file.write("const int obj_" + str(int(i)) + "_min_z = " + str(int(GridGraph.objects[i].z_min)) + ";\n")
        file.write("const int obj_" + str(int(i)) + "_max_x = " + str(int(GridGraph.objects[i].x_max)) + ";\n")
        file.write("const int obj_" + str(int(i)) + "_max_y = " + str(int(GridGraph.objects[i].y_max)) + ";\n")
        file.write("const int obj_" + str(int(i)) + "_max_z = " + str(int(GridGraph.objects[i].z_max)) + ";\n")
        file.write("\n")
        file.write("module obj_" + str(int(i)) + "\n")
        file.write("[check] !((x_pos >= obj_" + str(int(i)) + "_min_x) & (y_pos >= obj_" + str(
            int(i)) + "_min_y) & (z_pos >= obj_" + str(int(i)) + "_min_z) & (x_pos <= obj_" + str(
            int(i)) + "_max_x) & (y_pos <= obj_" + str(int(i)) + "_max_y) & (z_pos <= obj_" + str(
            int(i)) + "_max_z)) -> true;\n")
        file.write("endmodule\n")
        file.write("\n")

    if (len(path) > 0):
        pathlength = len(path) - 1

    file.write("const pathlength = " + str(int(pathlength)) + ";\n")

    for i in range(pathlength):
        file.write("const path_" + str(i) + "_x = " + str(path[i + 1][0]) + ";\n")
        file.write("const path_" + str(i) + "_y = " + str(path[i + 1][1]) + ";\n")
        file.write("const path_" + str(i) + "_z = " + str(path[i + 1][2]) + ";\n")

    file.write("\n")
    file.write("module path\n")
    file.write("\n")
    file.write("    point:[0.." + str(pathlength) + "] init 0;\n")
    file.write("    \n")
    file.write("    [check] ((point < pathlength) & \n")

    first = True

    for i in range(pathlength):
        if (first):
            file.write("    ( (point = 0 & x_pos = path_0_x &  y_pos = path_0_y &  z_pos = path_0_z)\n")
            first = False
        else:
            file.write("    | (point = " + str(i) + " & x_pos = path_" + str(i) + "_x &  y_pos = path_" + str(
                i) + "_y &  z_pos = path_" + str(i) + "_z)\n")

    file.write("        )) -> (point' = point + 1);\n")
    file.write("    \n")
    file.write("endmodule\n")

    return


def create_new_path_pm(path, GridGraph):
    file = open("./Files/model.pm", "w")  #

    if (len(path) > 0):
        x_start = path[0][0]
        y_start = path[0][1]
        z_start = path[0][2]
    else:
        x_start = GridGraph.PRISM_x_goal
        y_start = GridGraph.PRISM_y_goal
        z_start = GridGraph.PRISM_z_goal

    file.write("mdp\n")
    file.write("\n")
    file.write("formula goal = (x_pos = " + str(int(GridGraph.PRISM_x_goal)) + " & y_pos = " + str(
        int(GridGraph.PRISM_y_goal)) + " & z_pos = " + str(int(GridGraph.PRISM_z_goal)) + ");\n")
    file.write("\n")
    file.write("const int max_x = " + str(int(GridGraph.PRISM_width)) + ";\n")
    file.write("const int max_y = " + str(int(GridGraph.PRISM_depth)) + ";\n")
    file.write("const int max_z = " + str(int(GridGraph.PRISM_height)) + ";\n")
    file.write("\n")
    file.write("module position\n")
    file.write("\n")
    file.write("    step:[1..2] init 1;\n")
    file.write("\n")
    file.write("    x_pos:[0.." + str(int(GridGraph.PRISM_width)) + "] init " + str(int(x_start)) + ";\n")
    file.write("    y_pos:[0.." + str(int(GridGraph.PRISM_depth)) + "] init " + str(int(y_start)) + ";\n")
    file.write("    z_pos:[0.." + str(int(GridGraph.PRISM_height)) + "] init " + str(int(z_start)) + ";\n")
    file.write("    \n")
    file.write("    [change_pos] (step = 1) & (x_pos + 1 < max_x) -> (x_pos' = x_pos + 1) & (step' = 2);\n")
    file.write("    [change_pos] (step = 1) & (y_pos + 1 < max_y) -> (y_pos' = y_pos + 1) & (step' = 2);\n")
    file.write("    [change_pos] (step = 1) & (z_pos + 1 < max_z) -> (z_pos' = z_pos + 1) & (step' = 2);\n")
    file.write("    \n")
    file.write("    [change_pos] (step = 1) & (x_pos - 1 >= 0) -> (x_pos' = x_pos - 1) & (step' = 2);\n")
    file.write("    [change_pos] (step = 1) & (y_pos - 1 >= 0) -> (y_pos' = y_pos - 1) & (step' = 2);\n")
    file.write("    [change_pos] (step = 1) & (z_pos - 1 >= 0) -> (z_pos' = z_pos - 1) & (step' = 2);\n")
    file.write("    \n")
    file.write("    [check] (step = 2) -> (step' = 1);\n")
    file.write("    \n")
    file.write("endmodule\n")
    file.write("    \n")
    file.write("    \n")

    for i in range(GridGraph.get_object_count()):
        file.write("const int obj_" + str(int(i)) + "_min_x = " + str(int(GridGraph.objects[i].x_min)) + ";\n")
        file.write("const int obj_" + str(int(i)) + "_min_y = " + str(int(GridGraph.objects[i].y_min)) + ";\n")
        file.write("const int obj_" + str(int(i)) + "_min_z = " + str(int(GridGraph.objects[i].z_min)) + ";\n")
        file.write("const int obj_" + str(int(i)) + "_max_x = " + str(int(GridGraph.objects[i].x_max)) + ";\n")
        file.write("const int obj_" + str(int(i)) + "_max_y = " + str(int(GridGraph.objects[i].y_max)) + ";\n")
        file.write("const int obj_" + str(int(i)) + "_max_z = " + str(int(GridGraph.objects[i].z_max)) + ";\n")
        file.write("\n")
        file.write("module obj_" + str(int(i)) + "\n")
        file.write("[check] !((x_pos >= obj_" + str(int(i)) + "_min_x) & (y_pos >= obj_" + str(
            int(i)) + "_min_y) & (z_pos >= obj_" + str(int(i)) + "_min_z) & (x_pos <= obj_" + str(
            int(i)) + "_max_x) & (y_pos <= obj_" + str(int(i)) + "_max_y) & (z_pos <= obj_" + str(
            int(i)) + "_max_z)) -> true;\n")
        file.write("endmodule\n")
        file.write("\n")

    return