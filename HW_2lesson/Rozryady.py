k = list(input('enter your number\n'))
k.reverse()

for id, item in enumerate(k):
    print('\n'+str(k[id])+'*'+str(10**id))
    print(str(k[id]) + '*(10^' + str(id)+')'+'\n')



