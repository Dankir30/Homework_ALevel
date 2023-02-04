with open('randomNumbers.txt', 'r') as f:
    with open('NEW_file.txt', 'w') as result_file:
        for line in f:
            a = line.split()
            a = [int(i) for i in a]
            print('\n\n'+str(a))
            fizz = a[0]
            buzz = a[1]
            ThirdNumber = a[2]
            print(fizz, buzz, ThirdNumber)

            print(fizz, buzz, ThirdNumber, file=result_file)
            for i in range(1, ThirdNumber + 1):

                if i % fizz and i % buzz:
                    print(str(i)+'\n', file=result_file)
                elif i % buzz:
                    print('F\n', file=result_file)
                elif i % fizz:
                    print('B\n', file=result_file)
                else:
                    print("FB\n", file=result_file)
