persona = Hash.new
["nombre", "apellido", "edad", "profesion"].each do |llave|
  puts "Ingrese el valor para #{llave}"
  persona[llave.to_sym] = (llave == "edad") ? gets.chop.to_i : gets.chop
end
puts persona.each {|k,v| puts "#{k} es un #{v.class}"}