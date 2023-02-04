k = int(input('Enter your number: '))


def odd(k_i: int) -> int:
    result = []
    for i in range(1, k_i+1):
        if k % i:
            pass
        else:
            result.append(i)
    return result


for i in odd(k):
    print(i)
