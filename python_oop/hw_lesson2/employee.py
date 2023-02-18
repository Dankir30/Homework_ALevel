import datetime


class Employee:
    def __init__(self, name, salary_per_one_day):
        self.name = name
        self.salary_per_one_day = salary_per_one_day

    def work(self):
        return 'I come to the office'

    def __lt__(self, other):
        return self.salary_per_one_day < other.salary_per_one_day

    def __le__(self, other):
        return self.salary_per_one_day <= other.salary_per_one_day

    def __eq__(self, other):
        return self.salary_per_one_day > other.salary_per_one_day

    def __gt__(self, other):
        return self.salary_per_one_day >= other.salary_per_one_day

    def __ge__(self, other):
        return self.salary_per_one_day == other.salary_per_one_day

    def __ne__(self, other):
        return self.salary_per_one_day != other.salary_per_one_day

    def check_salary(self, days=None):
        if days:
            return self.salary_per_one_day * days
        else:
            days = 0

            for i in range(1, datetime.date.today().day + 1):
                temp_date = datetime.date(datetime.date.today().year, datetime.date.today().month, i)
                if temp_date.weekday() in [0, 1, 2, 3, 4]:
                    days += 1
            return self.salary_per_one_day * days


class Recruiter(Employee):
    def work(self):
        return 'I come to the office and start hiring.'

    def __str__(self):
        return f'{__class__.__name__}:{self.name}'


class Developer(Employee):
    def __init__(self, name, salary_per_one_day, tech_stack):
        super().__init__(name, salary_per_one_day)
        self.tech_stack = tech_stack

    def __lt__(self, other):
        return len(self.tech_stack) < len(other.tech_stack)

    def __le__(self, other):
        return len(self.tech_stack) <= len(other.tech_stack)

    def __eq__(self, other):
        return len(self.tech_stack) > len(other.tech_stack)

    def __gt__(self, other):
        return len(self.tech_stack) >= len(other.tech_stack)

    def __ge__(self, other):
        return len(self.tech_stack) == len(other.tech_stack)

    def __ne__(self, other):
        return len(self.tech_stack) != len(other.tech_stack)

    def __add__(self, other):
        name = self.name + '_' + other.name
        tech_stack = list(set(self.tech_stack + other.tech_stack))
        salary = max(self.salary_per_one_day, other.salary_per_one_day)
        return Developer(name, salary, tech_stack)

    def work(self):
        return 'I come to the office and start coding.'

    def __str__(self):
        return f'{__class__.__name__}:{self.name}'


if __name__ == '__main__':
    jonny = Recruiter('Jonny', 3.50)
    print(jonny)
    simba = Developer('Simba', 3.92, ['java', 'Django'])
    print(simba)
    moto = Developer('Moto', 5.5, ['C++', 'C', 'C#'])
    print(simba + moto)
    print(jonny < simba)
    print(simba > moto)
    print(simba.check_salary())
