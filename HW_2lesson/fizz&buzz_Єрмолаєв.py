fizz = int(input('You have to enter 3 number. Please, enter first number:\n'))
buzz = int(input('You have to enter 3 number. Please, enter second number:\n'))
ThirdNumber = int(input('You have to enter 3 number. Please, enter third number:\n'))

for i in range(1, ThirdNumber + 1):
    if i % fizz and i % buzz:
        print(i)
    elif i % buzz:
        print('F')
    elif i % fizz:
        print('B')
    else:
        print("FB")


