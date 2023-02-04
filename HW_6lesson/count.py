with open( 'words.txt','r') as file:
    first_list = [i.split() for i in file]
    whole_list = [el for lst in first_list for el in lst]
    print({i: whole_list.count(i) for i in whole_list})


