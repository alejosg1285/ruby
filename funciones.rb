# Definicion de funcion sin parametros.
def mi_funcion
  puts "Ruby es raramente elegante."
end

mi_funcion
puts "-----"

# Definicion de funcion con parametro
def mi_funcion(parametro)
  parametro.times do
    puts "Ruby es raramente elegante."
  end
end

mi_funcion(5)