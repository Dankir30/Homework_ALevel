
while True:
    try:
        inputMoney = int(input('Enter the amount of money, which < 18 880\n'))
        count1k = 0
        count500 = 0
        count200 = 0
        count100 = 0
        count50 = 0
        count20 = 0
        count10 = 0

        while inputMoney > 0:
            if inputMoney >= 10 and count10 < 8:
                count10 += 1
                inputMoney -= 10
            elif inputMoney >= 20 and count20 < 7:
                count20 += 1
                inputMoney -= 20
            elif inputMoney >= 50 and count50 < 8:
                count50 += 1
                inputMoney -= 50
            elif inputMoney >= 100 and count100 < 9:
                count100 += 1
                inputMoney -= 100
            elif inputMoney >= 200 and count200 < 9:
                count200 += 1
                inputMoney -= 200
            elif inputMoney >= 500 and count500 < 9:
                count500 += 1
                inputMoney -= 500
            elif inputMoney >= 1000 and count1k < 10:
                count1k += 1
                inputMoney -= 1000
            else:
                break

        while inputMoney > 0:
            if inputMoney >= 500 and count500 < 10:
                count500 += 1
                inputMoney -= 500
            elif inputMoney >= 200 and count200 < 10:
                count200 += 1
                inputMoney -= 200
            elif inputMoney >= 100 and count100 < 10:
                count100 += 1
                inputMoney -= 100
            elif inputMoney >= 50 and count50 < 10:
                count50 += 1
                inputMoney -= 50
            elif inputMoney >= 20 and count20 < 10:
                count20 += 1
                inputMoney -= 20
            elif inputMoney >= 10 and count10 < 10:
                count10 += 1
                inputMoney -= 10
            else:
                break

        print(str(count1k) + ' bills of 1000 grn\n'
                + str(count500) + ' bills of 500 grn\n' +
                str(count200) + ' bills of 200 grn\n' +
                str(count100) + ' bills of 100 grn\n' +
                str(count50) + ' bills of 50 grn\n' +
                str(count20) + ' bills of 20 grn\n' +
                str(count10) + ' bills of 10 grn\n' +
                str(inputMoney) + ' grn for balance')
    except:
        print('It`s not a number')