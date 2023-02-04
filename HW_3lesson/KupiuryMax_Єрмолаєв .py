inputMoney = int(input('Enter the amount of money\n'))
count1k = 0
count500 = 0
count200 = 0
count100 = 0
count50 = 0
count20 = 0
count10 = 0

while True:
    if inputMoney >= 1000:
        count1k += 1
        inputMoney -= 1000
    elif inputMoney < 1000 and inputMoney >= 500:
        count500 += 1
        inputMoney -= 500
    elif inputMoney < 500 and inputMoney >= 200:
        count200 += 1
        inputMoney -= 200
    elif inputMoney < 200 and inputMoney >= 100:
        count100 += 1
        inputMoney -= 100
    elif inputMoney < 100 and inputMoney >= 50:
        count50 += 1
        inputMoney -= 50
    elif inputMoney < 50 and inputMoney >= 20:
        count20 += 1
        inputMoney -= 20
    elif inputMoney < 20 and inputMoney >= 10:
        count10 += 1
        inputMoney -= 10
    else:
        break
if count1k > 0:
    print(str(count1k) + ' bills of 1000 grn\n')
if count500 > 0:
    (str(count500) + ' bills of 500 grn\n')
if count200 > 0:
     print(str(count200) + ' bills of 200 grn\n')
if count100 > 0:
    print(str(count50) + ' bills of 100 grn\n')
if count50 > 0:
    print(str(count50) + ' bills of 50 grn\n')
if count20 > 0:
    print(str(count20) + ' bills of 20 grn\n')
if count10 > 0:
    print(str(count10) + ' bills of 10 grn\n')

print(str(inputMoney) + ' grn for 1 gryvnya')

#print(str(count1k) + ' bills of 1000 grn\n'
#+str(count500) + ' bills of 500 grn\n' +
#str(count200)+' bills of 200 grn\n' +
#str(count100)+' bills of 100 grn\n' +
#str(count50)+' bills of 50 grn\n' +
#str(count20)+' bills of 20 grn\n' +
#str(count10)+' bills of 10 grn\n'+
#str(inputMoney) + ' grn for 1 gryvnya')
