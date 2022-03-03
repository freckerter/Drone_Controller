from example_input import ExampleInput
from grid_graph import GridGraph
from object_finder import get_objects
from object import Object

use_file = False

def create_blocks_graph():
    input = ExampleInput(100, 5400, -3000, 100, 5700, -100, 200, 13000, 2300, 3000, 12400, 1200, 300)

    graph = GridGraph(input)

    if use_file:
        objects = read_object_file()
    else:
        objects = get_objects(graph)
        write_object_file(objects)

    print("amount of objects: ", len(objects))
    for obj in objects:
        graph.add_object(obj.x_min, obj.y_min, obj.z_min, obj.x_max, obj.y_max, obj.z_max)

    # graph.add_object(8000, -2300, 100, 12000, 1800, 1600)  # big block
    # graph.add_object(10000, -300, 1600, 12000, 1800, 2600)  # small block
    return graph

def read_object_file():
    file = open("./Files/objects.txt", "r")

    objects = []

    for line in file:
        values = line.split(", ")
        objects.append(Object(0, int(values[0]), int(values[1]), int(values[2]), int(values[3]), int(values[4]), int(values[5])))

    return objects

def write_object_file(objects):
    file = open("./Files/objects.txt", "w")
    for obj in objects:
        file.write(str(obj.x_min) + ", " + str(obj.y_min) + ", " + str(obj.z_min) + ", " + str(obj.x_max) + ", " + str(obj.y_max) + ", " + str(obj.z_max) + "\n")
    return
