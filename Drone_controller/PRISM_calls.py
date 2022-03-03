import subprocess


def execute_PRISM_model(model_name):
    command = ".\\prism.bat .\\..\\..\\Files\\" + model_name + " .\\..\\..\\Files\\properties.props"

    subpro = subprocess.Popen(command, cwd="./prism-4.7/bin", shell=True, stdout=subprocess.PIPE)
    result = subpro.stdout.read().decode()
    return result

