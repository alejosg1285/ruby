class Calculadora
  attr_accessor :num1, :num2

  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
    # Valida si la variable existe, sino se crea con valor de 0 (||=).
    # Con el doble arroba (@@) se crea una variable global.
    @@acomulador ||= []
  end

  def sumar
    num1 + num2
  end

  def restar
    num1 - num2
  end

  def multiplicar
    num1 * num2
  end

  def acomulado
    @@acomulador << self
  end
end

calc1 = Calculadora.new(3, 5)
puts "#{calc1.num1} + #{calc1.num2} = #{calc1.sumar}"
puts calc1.inspect
puts calc1.acomulado

calc2 = Calculadora.new(8, 6)
puts "#{calc2.num1} + #{calc2.num2} = #{calc2.sumar}"
puts calc2.inspect
puts calc2.acomulado

puts "----------------"
puts "#{calc1.acomulado}"
puts "#{calc2.acomulado}"