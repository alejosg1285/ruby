class Clase
  # Metodo del objeto.
  def metodo_instancia
    puts "Hola, soy un metodo de instancia."
  end
  # Metodo equivalente a los metodos static de los otros lenguaje.
  def self.metodo_clase
    puts "Hi, soy un metodo de clase, no me puedes llamar desde objeto"
  end
end

# Instancia del objeto y llamado al metodo.
a = Clase.new
a.metodo_instancia
# Llamdo al metodo de clase (static).
Clase.metodo_clase

# Clase con constructor.
class Persona
  def initialize(nombre)
    @nombre = nombre
  end
  # Seria el getter del atributo.
  def nombre
    @nombre
  end
  # Seria el setter del atributo (no debe llevar espacios alredor del igual en la definicion del metodo).
  def nombre=(nombre)
    @nombre = nombre
  end
end

alejo = Persona.new("alejo")
puts "Nombre inicial: #{alejo.nombre}"
alejo.nombre = "mary"
puts "Nombre final #{alejo.nombre}"

class MiClase
  # Define dinamicamente los setters y getters de los atributos.
  attr_accessor :nombre, :edad, :sexo

  def initialize(nombre, edad, sexo)
    @nombre = nombre
    @edad = edad
    @sexo = sexo
  end
end

objcls = MiClase.new("alejo", 31, "M")
puts "Ahora: #{objcls.nombre}"
puts objcls.inspect
objcls.nombre = "diferente"
puts "Y ahora #{objcls.nombre}"