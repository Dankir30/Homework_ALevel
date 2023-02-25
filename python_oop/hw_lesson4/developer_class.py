from employee_class import Employee


class Developer(Employee):
    def __init__(self, name, salary_per_one_day, email, tech_stack):
        super().__init__(name, salary_per_one_day, email)
        self.tech_stack = tech_stack

    def __lt__(self, other):
        return len(self.tech_stack) < len(other.tech_stack)

    def __le__(self, other):
        return len(self.tech_stack) <= len(other.tech_stack)

    def __eq__(self, other):
        return len(self.tech_stack) == len(other.tech_stack)

    def __gt__(self, other):
        return len(self.tech_stack) > len(other.tech_stack)

    def __ge__(self, other):
        return len(self.tech_stack) >= len(other.tech_stack)

    def __ne__(self, other):
        return len(self.tech_stack) != len(other.tech_stack)

    def __add__(self, other):
        name = self.name + '_' + other.name
        email = self.email.partition('@')[0] + '_' + other.email.partition('@')[0] + '@gmail.com'
        tech_stack = list(set(self.tech_stack + other.tech_stack))
        salary = max(self.salary_per_one_day, other.salary_per_one_day)
        return Developer(
            name=name,
            salary_per_one_day=salary,
            email=email,
            tech_stack=tech_stack
            )

    def work(self):
        return 'I come to the office and start coding.'
