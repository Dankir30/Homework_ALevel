from random import randint


def fizz_buzz(i: int, fizz_deff: int, buzz_def: int) -> str:
    if i % fizz_deff == 0 and i % buzz_def == 0:
        return "FB "
    if i % fizz_deff == 0:
        return "F "
    elif i % buzz_def == 0:
        return "B "


maximum = randint(1, 6)
fizz = sorted([randint(1, 9) for i in range(maximum)])
buzz = sorted([randint(1, 9) for i in range(maximum)])
reply = [str(i) + " " if i % fizz[i-1] and i % buzz[i-1] else fizz_buzz(i, fizz[i-1], buzz[i-1]) for i in range(1, maximum+1)]
print(f"Fizz: {fizz}\nBuzz: {buzz}\nMax count: {maximum}\nReply: {''.join(map(str, reply))}")