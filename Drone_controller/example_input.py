class ExampleInput:

    def __init__(self,
                 discretization_factor,
                 x_0,
                 y_0,
                 z_0,
                 x_start,
                 y_start,
                 z_start,
                 x_max,
                 y_max,
                 z_max,
                 x_goal,
                 y_goal,
                 z_goal):

        self.discretisation_factor = discretization_factor

        self.x_0 = x_0
        self.y_0 = y_0
        self.z_0 = z_0

        self.x_start = x_start
        self.y_start = y_start
        self.z_start = z_start

        self.x_max = x_max
        self.y_max = y_max
        self.z_max = z_max

        self.x_goal = x_goal
        self.y_goal = y_goal
        self.z_goal = z_goal
