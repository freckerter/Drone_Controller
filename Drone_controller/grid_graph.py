from object import Object
import math


class GridGraph:

    def __init__(self, ExampleInput):

        self.objects = dict()

        self.alpha = ExampleInput.discretisation_factor

        self.AirSim_x_0 = ExampleInput.x_0
        self.AirSim_y_0 = ExampleInput.y_0
        self.AirSim_z_0 = ExampleInput.z_0

        self.AirSim_x_start = ExampleInput.x_start
        self.AirSim_y_start = ExampleInput.y_start
        self.AirSim_z_start = ExampleInput.z_start

        self.AirSim_x_max = ExampleInput.x_max
        self.AirSim_y_max = ExampleInput.y_max
        self.AirSim_z_max = ExampleInput.z_max

        self.AirSim_x_goal = ExampleInput.x_goal
        self.AirSim_y_goal = ExampleInput.y_goal
        self.AirSim_z_goal = ExampleInput.z_goal

        self.PRISM_x_start = (ExampleInput.x_start - ExampleInput.x_0) / self.alpha;
        self.PRISM_y_start = (ExampleInput.y_start - ExampleInput.y_0) / self.alpha;
        self.PRISM_z_start = (ExampleInput.z_start - ExampleInput.z_0) / self.alpha;

        self.PRISM_width = (ExampleInput.x_max - ExampleInput.x_0) / self.alpha;
        self.PRISM_depth = (ExampleInput.y_max - ExampleInput.y_0) / self.alpha;
        self.PRISM_height = (ExampleInput.z_max - ExampleInput.z_0) / self.alpha;

        self.PRISM_x_goal = (ExampleInput.x_goal - ExampleInput.x_0) / self.alpha;
        self.PRISM_y_goal = (ExampleInput.y_goal - ExampleInput.y_0) / self.alpha;
        self.PRISM_z_goal = (ExampleInput.z_goal - ExampleInput.z_0) / self.alpha;

        self.next_obj_id = 0

    def add_object(self, x_min, y_min, z_min, x_max, y_max, z_max):
        # input given in AirSim dimensions
        # rounding to make objects never too small

        PRISM_x_min = math.floor((x_min - self.AirSim_x_0) / self.alpha)
        PRISM_y_min = math.floor((y_min - self.AirSim_y_0) / self.alpha)
        PRISM_z_min = math.floor((z_min - self.AirSim_z_0) / self.alpha)
        PRISM_x_max = math.ceil((x_max - self.AirSim_x_0) / self.alpha)
        PRISM_y_max = math.ceil((y_max - self.AirSim_y_0) / self.alpha)
        PRISM_z_max = math.ceil((z_max - self.AirSim_z_0) / self.alpha)

        object = Object(self.next_obj_id, PRISM_x_min, PRISM_y_min, PRISM_z_min, PRISM_x_max, PRISM_y_max, PRISM_z_max)

        self.objects[self.next_obj_id] = object
        self.next_obj_id += 1
        return self.next_obj_id - 1

    def get_object_count(self):
        return len(self.objects)