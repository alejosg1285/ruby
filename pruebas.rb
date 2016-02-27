#Rails Crash Course - Anthony Lewis
#Ruby on Rails - Santiago Ponce Moreno
#Imprimir en pantalla.
puts "prueba consola"

#Definición de un rango.
a = (0..10)
#Conocer el tipo de la variable.
puts a.class
#Convertir un rango en un arreglo.
a = a.to_a
#puts a
puts a.class
#Recorrer el arreglo.
a.each { |i| puts "numero #{i}"}

#Uso de if.
a = 24
if a >= 18
  puts "si es mayor"
end

puts "si es mayor" if a <= 18

a = 19
if a >= 18
  puts "si es mayor"
elsif a <= 13
  puts "menor de 13"
else
  puts "entre 13 y 18"
end

#Uso de switch
case a
  when (0..13) then
    puts "niño"
  when (14..18) then
    puts "adolescente"
  else
    puts "mayor de edad"
end

v = gets
puts v

#Funciones con cadenas.
puts "hola mundo".capitalize
puts "hola mundo".upcase
puts "hola mundo".reverse
print "hola mundo".split " "
print "hola mundo".split("").sort
a = "hola mundo".split("").sort + [5]
print a
puts a.last
puts "hola" * 5

puts "Ingrese el nombre"
nom = gets
puts "Ingrese la edad"
eda = gets

=begin
  Con 'chomp' elimina el salto de linea del texto capturado.
  Con '!' lo hace permanente
=end
nom.chomp!

=begin
if eda.to_i > 25
  puts "#{nom} puede conducir"
else
  puts "#{nom} no puede conducir"
end
=end
#Usando el operador ternario.
#puts (eda.to_i > 25) ? "#{nom} puede conducir" : "#{nom} no puede conducir"
puts "#{nom.concat((eda.to_i > 25) ? " puede conducir" : " no puede conducir")}"

print (1..10).map { |x| x*2 }
print (1..10).map { |x| (1..x).map { |y| x * y } }