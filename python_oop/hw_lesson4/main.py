import datetime
import traceback

from employee_class import Employee
from recruiter_class import Recruiter
from developer_class import Developer
from custom_exceptions import EmailAlreadyExistsException


def main():
    jonny = Recruiter('Jonny', 3.50, 'bbbbbb@gmail.com')
    print(jonny)
    simba = Developer('Simba', 3.92, 'kakashka@lpnu.ua', ['java', 'Django'])
    print(simba)
    moto = Developer('Moto', 5.5, 'mamkin_hacker@yahoo.com', ['C++', 'C', 'C#'])
    mike = Employee('Mike', 3.33, 'american_boy@gmail.com')
    print(simba + moto)
    print(jonny < simba)
    print(simba > moto)
    print(simba.check_salary())
    print(mike)


if __name__ == '__main__':
    try:
        main()
    except EmailAlreadyExistsException:
        with open('log_.txt', 'a') as file:
            current_time = datetime.datetime.now()
            LOG_WRITE = traceback.format_exc()
            file.write(f'{current_time}\n {LOG_WRITE}')
    else:
        print('No log file is needed')
