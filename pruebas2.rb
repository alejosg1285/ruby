# Definir un arreglo.
arreglo = []
arreglo = ['Ruby', 60, 24.3, true]

arreglo.each {|x| puts "#{x} es un #{x.class}"}
puts "-----"
# Agregar elemntos al arreglo "<<".
arreglo << "alejandro"

# Comprobar si existe elementos en el arreglo "include?".
puts "#{(arreglo.include? "nataly") ? "existe" : "no existe"}"
puts "#{(arreglo.include? "alejandro") ? "existe" : "no existe"}"
puts "-----"
# Combinar dos arreglos "+"
arr = []
arr = ["hola"]
arr2 = arreglo + arr

arr2.each {|x| puts "#{x} es un #{x.class}"}
puts "-----"

# Buscar patron en un arreglo "grep /(expresion regular)/".
arr = ["_hola", "_mundo", "password", "word"].grep /_/
print arr
arr = ["_hola", "_mundo", "password", "word"].grep /word/
puts arr
puts "-----"

# Calcular el minimo y el maximo en un arreglo.
arr = [2, 4, 5, 900].max
print arr
arr = [2, 4, 5, 900].min
puts arr
puts "-----"

# Definir un hash.
a = Hash.new
a = {:saludo => "hola mundo", :persona => "Maria"} # Version antigua.
a = {saludo: "hola mundo", persona: "Maria"} # Version nueva.

# Consultar un elemento del hash.
puts a[:saludo]
puts a[:edad]
puts "-----"

# Agregar elementos a un hash.
a[:edad] = 36
puts a
puts "-----"

# Obtener las llaves del hash "keys".
computador = Hash.new
computador = {cpu: "Intel i7 5960x", ram: "64gb DDR4", discos: [{capacidad: 1, magnitud: "TB"}]}
puts computador.keys
puts "-----"

# Obtener los valores del hash "values"
puts computador.values
puts computador[:discos][0].values
puts computador[:discos].first[:capacidad]
puts "-----"

# Consultar en un hash capturando la llave.
consulta = gets.chop.to_sym
puts computador[consulta]
puts "-----"

# Agregar una nueva llave y valor capturando los valores.
nueva_llave = gets.chop.to_sym
nuevo_valor = gets.chop
computador[nueva_llave] = nuevo_valor
puts "-----"

# Recorrer un hash.
computador.each {|k, v| puts "#{k}, #{v}"}