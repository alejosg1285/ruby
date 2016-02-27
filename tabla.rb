puts "Digite la base"
base = gets.chomp.to_i
puts "Digite hasta que numero"
numero = gets.chomp.to_i

=begin
(1..15).each do |numero|
  puts "#{base} * #{numero} = #{base * numero}"
end
=end
(1..numero).each { |n| puts "#{base} * #{n} = #{base * n}"}