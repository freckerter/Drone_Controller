

def PRISM_to_AirSim_API(PRISM_x, PRISM_y, PRISM_z, GridGraph):
    # converts path values from prison to correct values for the API
    API_x = ((PRISM_x * GridGraph.alpha) + GridGraph.AirSim_x_0 - GridGraph.AirSim_x_start) / 100
    API_y = ((PRISM_y * GridGraph.alpha) + GridGraph.AirSim_y_0 - GridGraph.AirSim_y_start) / 100
    API_z = -((PRISM_z * GridGraph.alpha) + GridGraph.AirSim_z_0 - GridGraph.AirSim_z_start) / 100

    return [API_x, API_y, API_z]




def get_path(result):
    # print(result)
    at_coords = False

    path = []

    for line in result.splitlines():
        if (at_coords):
            # prepare string
            if (line == ""):
                at_coords = False
            else:
                line = line.replace("(", "")
                line = line.replace(")", "")

                numbers = [int(s) for s in line.split(",") if s.isdigit()]
                if (numbers[0] == 1):
                    numbers = numbers[1:4]
                    path.append(numbers)
        else:
            if (line == "Counterexample/witness:"):
                at_coords = True

    return path


def model_possible(output):
    for line in output:
        if (
                line == 'Property satisfied in 1 of 1 initial states.'):  # check for specific line, maybe make this better later on
            return False
    return True