
from threading import Thread, Lock
import airsim
import time

from PRISM_calls import execute_PRISM_model
from helper_functions import model_possible, get_path, PRISM_to_AirSim_API
from model_creator import create_check_pm, create_new_path_pm, create_pm
from graph_initializer import create_blocks_graph
from object_finder import get_objects


# define global mutexes
mtx_path = Lock()
mtx_step = Lock()
mtx_possible = Lock()
mtx_graph = Lock()
mtx_changes = Lock()



def path_checker(path, step, possible, graph, changes):
    mtx_path.acquire()
    mtx_step.acquire()
    mtx_possible.acquire()
    mtx_graph.acquire()
    mtx_changes.acquire()

    while (step[0] < len(path)):

        if changes[0]:  # only do something here, if there are changes to take into account

            my_path = path[step[0]:]

            create_check_pm(my_path, graph)

            mtx_path.release()
            mtx_step.release()
            mtx_possible.release()
            mtx_graph.release()
            mtx_changes.release()

            result = execute_PRISM_model("check_model.pm")

            mtx_path.acquire()
            mtx_step.acquire()
            mtx_possible.acquire()
            mtx_graph.acquire()
            mtx_changes.acquire()

            if model_possible(result):
                possible[0] = False
            else:
                pass
            changes[0] = False

        # if not possible anymore, compute new path, if no new can be found, repeat until you find one
        if not (possible[0]):

            my_path = path[step[0]:]

            # create new model, when graph gets changed
            # if the model is possible at some point, we can go back to business as usual
            while (True):

                create_new_path_pm(my_path, graph)

                mtx_path.release()
                mtx_step.release()
                mtx_possible.release()
                mtx_graph.release()
                mtx_changes.release()

                result = execute_PRISM_model("model.pm")

                mtx_path.acquire()
                mtx_step.acquire()
                mtx_possible.acquire()
                mtx_graph.acquire()
                mtx_changes.acquire()

                if (model_possible(result)):
                    new_path = get_path(result)

                    path.clear()  # have to do it this way (most likely)
                    path.extend(new_path)  # just path = new_path would change reference (at least i think so)
                    step[0] = 0
                    possible[0] = True

                    break  # get out of while(True) if new model has goalpath

                mtx_path.release()
                mtx_step.release()
                mtx_possible.release()
                mtx_graph.release()
                mtx_changes.release()

                time.sleep(1)

                mtx_path.acquire()
                mtx_step.acquire()
                mtx_possible.acquire()
                mtx_graph.acquire()
                mtx_changes.acquire()

        mtx_path.release()
        mtx_step.release()
        mtx_possible.release()
        mtx_graph.release()
        mtx_changes.release()

        time.sleep(1)  # check if changes are made less oftenly

        mtx_path.acquire()
        mtx_step.acquire()
        mtx_possible.acquire()
        mtx_graph.acquire()
        mtx_changes.acquire()

    return


def graph_updater(GridGraph, changes):
    # something that will change the graph later on

    block = True

    if block:
        # place blocking object after 3 seconds
        # big block at right side of tower
        # can't fly past tower on right side, above is better
        time.sleep(3)

        mtx_graph.acquire()
        mtx_changes.acquire()

        #x_min = 65 * GridGraph.alpha + GridGraph.AirSim_x_0
        #y_min = 42 * GridGraph.alpha + GridGraph.AirSim_y_0
        #z_min = 1 * GridGraph.alpha + GridGraph.AirSim_z_0
        #x_max = 69 * GridGraph.alpha + GridGraph.AirSim_x_0
        #y_max = 47 * GridGraph.alpha + GridGraph.AirSim_y_0
        #z_max = 4 * GridGraph.alpha + GridGraph.AirSim_z_0

        x_min = 10000
        y_min = 1700
        z_min = 100
        x_max = 11000
        y_max = 2500
        z_max = 2500

        GridGraph.add_object(x_min, y_min, z_min, x_max, y_max, z_max)

        changes[0] = True

        mtx_graph.release()
        mtx_changes.release()

    else:
        # place object that should not block anymore after 15 seconds
        time.sleep(15)

        mtx_graph.acquire()
        mtx_changes.acquire()

        x_min = 2 * GridGraph.alpha + GridGraph.AirSim_x_0
        y_min = 31 * GridGraph.alpha + GridGraph.AirSim_y_0
        z_min = 1 * GridGraph.alpha + GridGraph.AirSim_z_0
        x_max = 4 * GridGraph.alpha + GridGraph.AirSim_x_0
        y_max = 33 * GridGraph.alpha + GridGraph.AirSim_y_0
        z_max = 3 * GridGraph.alpha + GridGraph.AirSim_z_0

        GridGraph.add_object(x_min, y_min, z_min, x_max, y_max, z_max)

        changes[0] = True

        mtx_graph.release()
        mtx_changes.release()

    return


def AirSim_control(path, step, possible, graph):
    # set up general connection
    client = airsim.MultirotorClient()
    client.confirmConnection()
    client.enableApiControl(True)
    client.armDisarm(True)

    mtx_path.acquire()
    mtx_step.acquire()
    mtx_possible.acquire()
    mtx_graph.acquire()

    while (step[0] < len(path)):

        if possible[0]:

            x_pos = path[step[0]][0]
            y_pos = path[step[0]][1]
            z_pos = path[step[0]][2]

            AirSim_coords = PRISM_to_AirSim_API(x_pos, y_pos, z_pos, graph)

            mtx_path.release()
            mtx_step.release()
            mtx_possible.release()
            mtx_graph.release()

            client.moveToPositionAsync(AirSim_coords[0], AirSim_coords[1], AirSim_coords[2], 5).join()

            mtx_path.acquire()
            mtx_step.acquire()
            mtx_possible.acquire()
            mtx_graph.acquire()

            step[0] += 1




        else:
            print("Blocked, Drone is waiting")

            mtx_path.release()
            mtx_step.release()
            mtx_possible.release()
            mtx_graph.release()

            time.sleep(1)

            mtx_path.acquire()
            mtx_step.acquire()
            mtx_possible.acquire()
            mtx_graph.acquire()

    mtx_path.release()
    mtx_step.release()
    mtx_possible.release()
    mtx_graph.release()

    return


def main():
    # imput for blocks environment
    graph = create_blocks_graph()

    create_pm(graph)


    result = execute_PRISM_model("model.pm")

    path = get_path(result)

    step = [0]
    possible = [True]
    changes = [False]

    changer = Thread(target=graph_updater, args=(graph, changes))
    checker = Thread(target=path_checker, args=(path, step, possible, graph, changes))
    controller = Thread(target=AirSim_control, args=(path, step, possible, graph))

    checker.start()
    changer.start()
    controller.start()

    changer.join()
    print("changer finished")
    controller.join()
    print("controller finished")
    checker.join()
    print("checker finished")



    print("Finished")


if __name__ == "__main__":
    main()
