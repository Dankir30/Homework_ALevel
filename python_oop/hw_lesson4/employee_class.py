import datetime

from custom_exceptions import EmailAlreadyExistsException


class Employee:
    def __init__(self, name, salary_per_one_day, email):
        self.name = name
        self.salary_per_one_day = salary_per_one_day
        self.email = email
        self.validate()
        self.save_email()

    def save_email(self):
        with open('emails.txt', 'a') as file:
            file.write(self.email + '\n')

    def validate(self):
        with open('emails.txt', 'r') as file:
            for line in file:
                if self.email in line:
                    raise EmailAlreadyExistsException

    def work(self):
        return 'I come to the office'

    def __str__(self):
        return f'{self.__class__.__name__}:{self.name}'

    def __lt__(self, other):
        return self.salary_per_one_day < other.salary_per_one_day

    def __le__(self, other):
        return self.salary_per_one_day <= other.salary_per_one_day

    def __eq__(self, other):
        return self.salary_per_one_day == other.salary_per_one_day

    def __gt__(self, other):
        return self.salary_per_one_day > other.salary_per_one_day

    def __ge__(self, other):
        return self.salary_per_one_day >= other.salary_per_one_day

    def __ne__(self, other):
        return self.salary_per_one_day != other.salary_per_one_day

    def check_salary(self, days=None):
        if days:
            return self.salary_per_one_day * days

        days_ = 0

        for i in range(1, datetime.date.today().day + 1):
            temp_date = datetime.date(datetime.date.today().year, datetime.date.today().month, i)
            if temp_date.weekday() < 5:
                days_ += 1
        return self.salary_per_one_day * days_
