def get_size(size):
    all_sizes = {'XXS': {'rusnya': 42, 'Germany': 36, 'USA': 8, 'France': 38, 'Great Britain': 24,'Waist size':'63-65'},
                'XS': {'rusnya': 44, 'Germany': 38, 'USA': 10, 'France': 40, 'Great Britain': 26,'Waist size':'66-69'},
                'S': {'rusnya': 46, 'Germany': 40, 'USA': 12, 'France': 42, 'Great Britain': 28,'Waist size':'70-74'},
                'M': {'rusnya': 48, 'Germany': 42, 'USA': 14, 'France': 44, 'Great Britain': 30,'Waist size':'75-78'},
                'L': {'rusnya': 50, 'Germany': 44, 'USA': 16, 'France': 46, 'Great Britain': 32,'Waist size':'79-83'},
                'XL': {'rusnya': 52, 'Germany': 46, 'USA': 18, 'France': 48, 'Great Britain': 34,'Waist size':'84-89'},
                'XXL': {'rusnya': 54, 'Germany': 48, 'USA': 20, 'France': 50, 'Great Britain': 36,'Waist size':'90-94'},
                'XXXL': {'rusnya': 56, 'Germany': 50, 'USA': 22, 'France': 52, 'Great Britain': 38,'Waist size':'95-97'}}
    return all_sizes[size]


size = input("Write your international size: \n").upper()
print(f'Size {size} in other regions: {get_size(size)}')

