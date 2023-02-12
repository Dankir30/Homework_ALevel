class ElementProps:
    def __init__(self, melting_point, boiling_point):
        self.melting_point = melting_point
        self.boiling_point = boiling_point

    def agg_state(self, current_temp, scale):

        if self.convert_to_c(current_temp, scale) >= self.boiling_point:
            return 'Gaseous aggregate state'
        elif self.melting_point <= self.convert_to_c(current_temp, scale) < self.boiling_point:
            return 'Liquid aggregate state'
        else:
            return 'Solid aggregate state'

    def convert_to_c(self, current_temp, scale):

        if scale == 'C':
            return current_temp
        elif scale == 'K':
            current_temp = current_temp - 273.15
            return current_temp
        elif scale == 'F':
            current_temp = (current_temp-32) / 1.8
            return current_temp


if __name__ == '__main__':
    cu = ElementProps(1083.4, 2567)
    print(f'For Cu {cu.agg_state(42, "C")}\n'
          f'For Cu {cu.agg_state(4821, "K")}\n'
          f'For Cu {cu.agg_state(1103, "F")}\n\n')

    al = ElementProps(660.37, 2494)
    print(f'For Al {al.agg_state(3000, "C")}\n'
          f'For Al {al.agg_state(1594.25, "K")}\n'
          f'For Al {al.agg_state(302.94, "F")}\n\n')

    hg = ElementProps(-38.83, 356.73)
    print(f'For Hg(Hydrargyrum) {hg.agg_state(0, "C")}\n'
          f'For Hg(Hydrargyrum) {hg.agg_state(660, "K")}\n'
          f'For Hg(Hydrargyrum) {hg.agg_state(1123, "F")}\n\n')

    o_2 = ElementProps(-218.35, -182.96)
    print(f'For Oxygenium {o_2.agg_state(200, "C")}\n'
          f'For Oxygenium {o_2.agg_state(38, "K")}\n'
          f'For Oxygenium {o_2.agg_state(938, "F")}\n\n')

    water = ElementProps(0, 100)
    print(f'For water {water.agg_state(-1, "C")}\n'
          f'For water {water.agg_state(1294, "K")}\n'
          f'For water {water.agg_state(73, "F")}\n\n')
