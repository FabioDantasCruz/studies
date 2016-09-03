
# String
#

# ConcatenaÃ§Ã£o
string = 'Ola, ' + 'Mundo'
assert_equal string, string

ola = 'Ola, '
mundo = 'Mundo'
string = ola + mundo
assert_equal ola, ola
assert_equal mundo, mundo

ola = 'Ola, '
mundo = 'Mundo'
ola += mundo
assert_equal ola, ola

# Quebra de linha
string = "\n"
assert_equal 1, string.size

string = '\n'
assert_equal 2, string.size

# InterpolaÃ§Ã£o
valor = 123
string = "valor: #{valor}"
assert_equal string, string

valor = 123
string = 'valor: #{valor}'
assert_equal string, string

# OperaÃ§Ã£o de "slice" em Strings
string = 'Arroz, FeijÃ£o e batata frita'
assert_equal "Fei", string[7,3]
assert_equal "Fei", string[7..9]
assert_equal "r", string[1]
