def fibonacci(n)
if n < 2
  return n
else
  return fibonacci(n - 1) + fibonacci(n - 2)
end
end

numbers = []

i = 0
while i < 30 do
numbers << fibonacci(i)
  i+= 1
end

puts "Digite um numero"
num = gets.chomp.to_i

if numbers.include?(num)
  puts "Pertence a sequência"
else
  puts "Não pertence a sequência"
end

