
nice = True
print("nice" if nice else "not nice")

condition = False
print(2 if condition else 3)


test = True
result = (test and 'Test is True') or ('Test is False' and test)
print(result)

test1 = True
result = test1 ^ True
print(result)

test2 = False
result = test2 ^ True
print(result)

test_input1 = int(input('\npleese, number 1:\n\n'))
test_input2 = int(input('\npleese, number 2:\n\n'))
test3 = test_input1 ^ test_input2
print('numbers are NOT the same' if test3 else 'numbers are THE SAME')



