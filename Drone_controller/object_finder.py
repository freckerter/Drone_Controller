import airsim
import math
from object import Object

merging_distance = 1000  # constant at which objects get merged, could change later on.
box_safety_scaling = 1.4 #make boxes a bit bigger than they really are for safety


def get_objects(graph):
    objects = []  # here in AirSim coordinates and not in PRISM

    client = airsim.MultirotorClient()
    names = client.simListSceneObjects()

    print(names)

    for name in names:
        # find the correct object
        if "TemplateCube_Rounded_" in name:
            new_objects = create_TemplateCube_Rounded_object(client, graph, name)

            for new_obj in new_objects:
                # check, if in bounds:
                if inbounds(graph, new_obj):

                    # iterate over all objects already found, and try to merge
                    merged = False
                    for j, obj in enumerate(objects):
                        if check_merging(obj, new_obj):
                            objects[j] = merge_objects(obj, new_obj)

                            merged = True
                            break

                    if (not (merged)):
                        objects.append(new_obj)

    return objects


def inbounds(graph, obj):
    if (obj.x_min > graph.AirSim_x_max or
            obj.y_min > graph.AirSim_y_max or
            obj.z_min > graph.AirSim_z_max or
            obj.x_max < graph.AirSim_x_0 or
            obj.x_max < graph.AirSim_y_0 or
            obj.x_max < graph.AirSim_z_0):
        return False
    return True


def merge_objects(obj_1, obj_2):
    new_x_max = max(obj_1.x_max, obj_2.x_max)
    new_y_max = max(obj_1.y_max, obj_2.y_max)
    new_z_max = max(obj_1.z_max, obj_2.z_max)

    new_x_min = min(obj_1.x_min, obj_2.x_min)
    new_y_min = min(obj_1.y_min, obj_2.y_min)
    new_z_min = min(obj_1.z_min, obj_2.z_min)

    return Object(0, new_x_min, new_y_min, new_z_min, new_x_max, new_y_max, new_z_max)


def check_merging(obj_1, obj_2):
    x_mid_1 = obj_1.x_max - obj_1.x_min
    y_mid_1 = obj_1.y_max - obj_1.y_min
    z_mid_1 = obj_1.z_max - obj_1.z_min

    x_mid_2 = obj_2.x_max - obj_2.x_min
    y_mid_2 = obj_2.y_max - obj_2.y_min
    z_mid_2 = obj_2.z_max - obj_2.z_min

    x_dif = x_mid_1 - x_mid_2
    y_dif = y_mid_1 - y_mid_2
    z_dif = z_mid_1 - z_mid_2

    distance = (x_dif ** 2 + y_dif ** 2 + z_dif ** 2) ** 0.5

    if distance < merging_distance:
        return True
    return False


def create_TemplateCube_Rounded_object(client, graph, name):
    pose = client.simGetObjectPose(name)
    scale = client.simGetObjectScale(name)

    x_mid = (graph.AirSim_x_start + pose.position.x_val * 100)
    y_mid = (graph.AirSim_y_start + pose.position.y_val * 100)
    z_mid = (graph.AirSim_z_start - pose.position.z_val * 100)

    x_size = scale.x_val * 100 * box_safety_scaling
    y_size = scale.y_val * 100 * box_safety_scaling
    z_size = scale.z_val * 100 * box_safety_scaling

    # rounding to make objects never too small
    x_min = math.floor(x_mid - (x_size / 2))
    y_min = math.floor(y_mid - (y_size / 2))
    z_min = math.floor(z_mid - (z_size / 2))

    x_max = math.ceil(x_mid + (x_size / 2))
    y_max = math.ceil(y_mid + (y_size / 2))
    z_max = math.ceil(z_mid + (z_size / 2))

    # id not important here
    return [Object(0, x_min, y_min, z_min, x_max, y_max, z_max)]
