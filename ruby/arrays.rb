# Array
#

# AtribuiÃ§Ãµes a partir de Arrays
nome, sobrenome = ['Renato', 'Augusto']
assert_equal nome, nome
assert_equal sobrenome, sobrenome

nome, sobrenome = ["Renato", "Augusto", "Brasil"]
assert_equal nome, nome
assert_equal sobrenome, sobrenome

nome, sobrenome = ["Renato"]
assert_equal nome, nome
assert_equal sobrenome, sobrenome

nome = "Renato"
sobrenome = "Augusto"
nome, sobrenome = sobrenome, nome
assert_equal nome, nome
assert_equal sobrenome, sobrenome

# CriaÃ§Ã£o de Arrays
lista_vazia = Array.new
assert_equal 0, lista_vazia.size

# Acesso a elementos de Arrays
lista = ['leite', 'nescau', 'e', 'acucar']
assert_equal "leite", lista[0]
assert_equal "leite", lista.first
assert_equal "acucar", lista[3]
assert_equal "acucar", lista.last
assert_equal "acucar", lista[-1]
assert_equal "nescau", lista[-3]

# OperaÃ§Ã£o de "slice" em um Array
lista = ['leite', 'nescau', 'e', 'acucar']
assert_equal ["leite"] , lista[0,1]
assert_equal ["leite", "nescau"], lista[0,2]
assert_equal ["e", "acucar"], lista[2,2]
assert_equal ["e", "acucar"], lista[2,20]
assert_equal [], lista[4,0]
assert_equal [], lista[4,100]
assert_equal nil, lista[5,0]

# OperaÃ§Ãµes de push e pop em um Array
lista = [1, 2]

lista.push('ultimo')
assert_equal lista, lista

valor = lista.pop
assert_equal valor, valor
assert_equal lista, lista

# OperaÃ§Ãµes de shift e unshift em um Array
lista = [1, 2]

lista.unshift('primeiro')
assert_equal lista, lista

valor = lista.shift
assert_equal valor, valor
assert_equal lista, lista

# Iterar pelos elementos de um Array
lista = [1, 2, 3]
soma = 0
lista.each do |elemento|
  soma += elemento
end
assert_equal 6, soma